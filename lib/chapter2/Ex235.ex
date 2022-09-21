defmodule Ex235 do
  # Old implmenetation
  def count_leaves([]) do
    0
  end

  def count_leaves(x) when not is_list(x) do
    1
  end
  def count_leaves([h|t]) do
    count_leaves(h) + count_leaves(t)
  end

  # accumulate(op, initial, operation)
  def count_leaves_acc(t) do
    Enum.reduce(t, 0, fn x, acc ->
      acc + case is_list(x) do
         true -> count_leaves(x)
         false -> 1
      end
    end)
  end
end
