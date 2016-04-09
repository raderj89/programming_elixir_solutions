defmodule Chop do
  def guess(n, min..max) when (n < min) or (n > max),
    do: 'Number not in range!'

  def guess(n, min..max) do
    attempt = div(min + max, 2)

    IO.puts "is it #{attempt}"
    _guess(n, min..max, attempt)
  end

  defp _guess(n, _, attempt) when n == attempt,
    do: attempt

  defp _guess(n, min.._, attempt) when n < attempt,
    do: guess(n, min..(attempt - 1))

  defp _guess(n, _..max, attempt) when n > attempt,
    do: guess(n, (attempt + 1)..max)
end

IO.puts Chop.guess(273, 1..1000)
