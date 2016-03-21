# Can use pattern matching to create base cases for recursive functions
defmodule Recursion do
  def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)

  # Greatest Common Divisor
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
