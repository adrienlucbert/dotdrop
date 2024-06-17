defmodule StreamProgress do
  @moduledoc """
  Stream progress logging utils.
  """

  defp make_progress_bar(index, max, step, size) do
    0..size
    |> Enum.map(fn i -> if i / size <= index / (Float.round(max / step) * step), do: "█", else: "░" end)
    |> Enum.join
  end
  defp format_time(seconds) when seconds >= 60 * 60, do: ("#{div(seconds, 60 * 60)}" |> String.pad_leading(2, "0")) <> ":" <> format_time(rem(seconds, 60 * 60))
  defp format_time(seconds), do: ("#{rem(div(seconds, 60), 60)}" |> String.pad_leading(2, "0")) <> ":" <> ("#{rem(seconds, 60)}" |> String.pad_leading(2, "0"))
  defp log_progress(%{index: i, max: max, step: step, time_elapsed: time_elapsed, time_left: time_left}) do
    IO.write("\r#{((i / max) * 100) |> Float.round(1)}% |#{make_progress_bar(i, max, step, 30)}| (#{i}/#{max}) [#{format_time(time_elapsed)}<#{format_time(time_left)}]")
  end
  defp log_progress(%{index: i}), do: IO.puts("#{i}")

  @doc """
  Log stream progress.

  Optional parameters:
    - :max: size of the stream input (in case it can't be determined automatically)
    - :step: log every nth element processed
    - :logger: function used to log progress, of the form:
      logger(%{index :: integer(), max :: integer(), step :: integer(), time_left :: integer()}) :: any()

  If the stream input size can be determined (if stream.enum is an enumerable),
  the :max and :step optional parameters will be determined automatically.
  If the stream input size can't be determined and the :step optional parameter
  is not set, :step will default to 1000, logging progress every 1000 elements
  processed.

  Usage example:
    # The stream input is an enum from 1 to 1000, :max and :step can be determined automatically
    iex(1)> 1..1000 |> Stream.map(fn _ -> :timer.sleep(1) end) |> StreamProgress.log() |> Stream.run()
    100.0% |███████████████████████████████| (1000/1000) [00:02<00:00]:ok

    # The stream input is a function (Stream.cycle), :max and :step can't be determined automatically, defaulting to 1000
    iex(2)> 1..3 |> Stream.cycle |> Stream.take(10_000) |> StreamProgress.log() |> Stream.run()
    1000
    2000
    3000
    4000
    5000
    6000
    7000
    8000
    9000
    10000
    :ok

    # The stream input is a function (Task.async_stream), :max and :step can't be determined automatically, but are provided by the user
    iex(3)> 1..1000 |> Task.async_stream(fn _ -> :timer.sleep(10) end, max_concurrency: 10) |> StreamProgress.log(max: 1000) |> Stream.run()
    100.0% |███████████████████████████████| (1000/1000) [00:01<00:00]:ok
  """
  def log(stream, opts \\ []) do
    max = Keyword.get(opts, :max) || if is_function(stream) || is_function(stream.enum) do nil else stream.enum |> Enum.count end
    step = Keyword.get(opts, :step) || if is_nil(max), do: 1000, else: max(1, div(max, 1000))
    logger = Keyword.get(opts, :logger, &log_progress/1)
    stream
    |> Stream.with_index(1)
    |> Stream.transform(%{}, fn ({value, idx}, state) ->
      now = :os.perf_counter(:nanosecond)
      cond do
        Map.get(state, :start_time) |> is_nil -> {[value], state |> Map.put(:start_time, now)}
        rem(idx, step) === 0  ->
          logger_opts = case max do
            nil -> %{index: idx}
            max -> with elapsed <- now - state[:start_time], do: %{
              index: idx,
              max: max,
              step: step,
              time_elapsed: elapsed |> div(1000_000_000),
              time_left: (div(elapsed * max, idx) - elapsed) |> div(1000_000_000),
            }
          end
          logger.(logger_opts)
          {[value], state}
        true -> {[value], state}
      end
    end)
  end
end