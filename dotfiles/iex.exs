# Import all modules located in ~/.iex.d/
with {:ok, files} <- File.ls(Path.expand("~/.iex.d")) do
  files |> Enum.map(fn file -> Path.expand("~/.iex.d/" <> file) end) |> c
end