defmodule MyList do
  def span(from, from), do: [from]

  def span(from, to) when from > to do
    raise "We can't go backwards. from > to"
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end
end
