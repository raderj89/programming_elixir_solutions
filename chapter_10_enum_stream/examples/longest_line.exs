# IO.puts File.read!("/usr/share/dict/words")
#   |> String.split
#   |> Enum.max_by(&String.length/1)

# Using Stream
# IO.puts File.open!("/usr/share/dict/words")
#   |> IO.stream(:line)
#   |> Enum.max_by(&String.length/1)

IO.puts File.stream!("/usr/share/dict/words")
  |> Enum.max_by(&String.length/1)
