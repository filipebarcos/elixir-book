defmodule MyList do
  def caesar(list, 1), do: list
  def caesar([], _), do: []

  def caesar([head|tail], n), do: [(head * n) | caesar(tail, n)]
end

IO.puts MyList.caesar('ryvkve', 13)
