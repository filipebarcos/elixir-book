prefix = fn(str) ->
  fn(str_2) ->
    "#{str} #{str_2}"
  end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")
