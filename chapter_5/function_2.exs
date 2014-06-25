function_2 = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

IO.puts function_2.(0, 0, 1)
IO.puts function_2.(0, 2, 1)
IO.puts function_2.(2, 0, 1)
IO.puts function_2.(9, 1, "yay")

