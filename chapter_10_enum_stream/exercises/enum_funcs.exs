# Implement the following Enum functions using no library functions or list
# comprehensions: all?, each, filter, split, and take. You may need to use an
# if statement to implement filter.

defmodule MyEnum do
  def all?(list), do: all?(list, &(!!&1))

  def all?([], _), do: true

  def all?([ head | tail ], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _), do: :ok

  def each([ head | tail ], func) do
    func.(head)
    each(tail, func)
  end

  def filter([], _), do: []

  def filter([head | tail], func) do
    if func.(head) do
      [head] ++ filter(tail, func)
    else
      [] ++ filter(tail, func)
    end
  end

  def take([], _), do: []

  def take([], 0, acc), do: acc

  def take([head | tail ], num, acc \\ []) do
    if num > 0 do
      take(tail, num - 1, acc ++ [head])
    else
      acc
    end
  end

  # def split([], _) do: []
  #
  # def split(list, 0) do:
  #
  # def split(list, num) do
  #
  # end
end
