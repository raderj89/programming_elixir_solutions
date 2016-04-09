defmodule Factorial do
  def of(0), do: 1
  # Add guard clause to prevent infinite loop
  def of(n) when n > 1 do
    n * of(n - 1)
  end
end
