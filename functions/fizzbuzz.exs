fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, z) -> z
end

feed_fizzbuzz = fn(n) -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

IO.puts feed_fizzbuzz.(10)
IO.puts feed_fizzbuzz.(11)
IO.puts feed_fizzbuzz.(12)
IO.puts feed_fizzbuzz.(13)
IO.puts feed_fizzbuzz.(14)
IO.puts feed_fizzbuzz.(15)
IO.puts feed_fizzbuzz.(16)
