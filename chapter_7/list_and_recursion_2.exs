defmodule MyList do

  def max([]), do: -1
  def max([head|tail]), do: _max(tail, head)

  defp _max([], maxnum), do: maxnum
  defp _max([head|tail], maxnum) when head > maxnum do
    _max(tail, head)
  end

  defp _max([_head|tail], maxnum), do: _max(tail, maxnum)

end

IO.puts MyList.max [1, 2, 3]
#=> 3

IO.puts MyList.max []
#=> -1

IO.puts MyList.max [3, 1, 2]
#=> 3

IO.puts MyList.max [3, 2, 1]
#=> 3

IO.puts MyList.max [3, 2, 2]
#=> 3

IO.puts MyList.max [2, 2, 2]
#=> 2
