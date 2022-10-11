defmodule Ex238 do

  def fold_right(op, result, []) do
    result
  end

  def fold_right(op, initial, [h | t]) do
    op.(h, fold_right(op, initial, t))
  end

  def dbg(x, acc) do
    IO.inspect(acc / x, label: "dbg #{x} / #{acc}")
  end

  def fold_left(_op, acc, []) do
    acc
  end

  def fold_left(op, acc, [h | t]) do
    fold_left(op, op.(acc, h), t)
  end
end
