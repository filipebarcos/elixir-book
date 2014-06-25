function_2 = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

function_3 = fn
  (n) -> function_2.(rem(n,3), rem(n, 5), n)
end

# 10..16 |> Enum.each &IO.puts(function_3.(&1))
Enum.each 10..16, fn (num) ->
  IO.puts function_3.(num)
end
