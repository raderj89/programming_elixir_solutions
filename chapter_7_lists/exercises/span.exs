# Write a function MyList.span(from, to) that returns a list of the numbers
# from from up to to.

defmodule MyList do
  def span(to, upper_bound) when to == upper_bound, do: [to]
  def span(from, to) do
    [ from | span(from + 1, to) ]
  end
end
