fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, z) -> z
end

# IO.puts fizzbuzz.(0, 0, 2)
# IO.puts fizzbuzz.(0, 4, 1)
# IO.puts fizzbuzz.(6, 0, 9)

feed_fizzbuzz = fn(n) ->
  three = rem(n, 3)
  five = rem(n, 5)
  fizzbuzz.(three, five, n)
end

IO.puts feed_fizzbuzz.(10)
IO.puts feed_fizzbuzz.(11)
IO.puts feed_fizzbuzz.(12)
IO.puts feed_fizzbuzz.(13)
IO.puts feed_fizzbuzz.(14)
IO.puts feed_fizzbuzz.(15)
IO.puts feed_fizzbuzz.(16)
