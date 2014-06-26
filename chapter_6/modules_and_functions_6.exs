# Default Values for params and guard clauses

defmodule Chop do
  def guess(actual, (min..max)) do
    guessed = max - div(max - min, 2)
    check(actual, guessed, min..max)
  end

  def next_guess(actual, guessed, (_..max)) when guessed < actual do
    guess(actual, ((guessed + 1)..max))
  end

  def next_guess(actual, guessed, (min.._)) when guessed > actual do
    guess(actual, (min..(guessed - 1)))
  end

  def next_guess(actual, actual, _) do
    IO.puts "YAY! It's #{actual} indeed!!"
  end

  def check(actual, guessed, range) do
    IO.puts "Is it #{guessed}?"
    next_guess(actual, guessed, range)
  end
end

Chop.guess(273, 1..1000)
IO.puts "---"
Chop.guess(67, 50..67)
