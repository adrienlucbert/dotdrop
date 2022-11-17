defmodule StreamProgress do
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
  defp log_progress(%{i: i}), do: IO.puts("#{i}")

  def log(stream, opts \\ []) do
    max = Keyword.get(opts, :max) || if is_function(stream.enum) do nil else stream.enum |> Enum.count end
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
            nil -> %{i: idx}
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

# 1..1000 |> Stream.map(fn _ -> :timer.sleep(1) end) |> StreamProgress.log() |> Stream.run