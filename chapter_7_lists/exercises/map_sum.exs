# Write a mapsum function that takes a list and a function. It applies the
# function to each element of the list and then sums the result, so
# iex> ​ MyList.mapsum [1, 2, 3], &(&1 * &1)
# 14

defmodule MyList do
  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _), do: value

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _), do: 0

  def mapsum(list, func) do
    map(list, func)
    |> reduce(0, &(&1 + &2))
  end
end

IO.puts MyList.mapsum([1, 2, 3], &(&1 * &1)) == 14
