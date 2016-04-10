# Write a max(list) that returns the element with the maximum value in the list.
# (This is slightly trickier than it sounds.)

defmodule MyList do
  def reduce([], value, _), do: value

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def max([]), do: nil

  def max([x]), do: x

  def max(list) do
    [head | tail] = list

    greater_than = fn
      (x, y) when x > y -> x
      (x, y) when y > x -> y
    end

    reduce(tail, head, greater_than)
  end
end

IO.puts MyList.max([1,2,3]) == 3
IO.puts MyList.max([50, 32, 22, 99, 3]) == 99
IO.puts MyList.max([]) == nil
IO.puts MyList.max([1]) == 1
