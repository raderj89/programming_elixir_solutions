defmodule MyList do

  def flatten(list, acc \\ [])

  def flatten([], acc), do: acc

  def flatten([head | tail], acc) when is_list(head) do
    flatten(head, flatten(tail, acc))
  end

  def flatten([head | tail], acc) do
    [ head | flatten(tail, acc) ]
  end

  # def flatten([ head | tail ], acc \\ []) do
  #   if !is_list(head) do
  #     flatten(tail, acc ++ [head])
  #   else
  #     flatten(head ++ tail, acc)
  #   end
  # end
end
