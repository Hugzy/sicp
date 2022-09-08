defmodule Ex232 do
  # Check if the list is empty
    # If so return an empty list
  # Let rest be the subset of the tail of the list

  def subsets([]) do
    []
  end

  def subsets([h | t]) do
    IO.inspect(h, label: "h")
    IO.inspect(t, label: "t")
    rest = subsets(t)
    IO.inspect(rest, label: "rest")
    return = rest ++ Enum.map(rest, fn x -> [h, x] end)
    IO.inspect(return, label: "return")
  end
end
