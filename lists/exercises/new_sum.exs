# Write a sum function without an accumulator
defmodule MyList do
  def sum([]), do: 0
  def sum([x]), do: x
  def sum([ head | tail ]), do: head + sum(tail)
end
