defmodule Ex238 do
  def fold_right(_op, result, []) do
    result
  end

  def fold_right(op, initial, [h | t]) do

  end

  def fold_left(_op, result, []) do
    result
  end

  def fold_left(op, initial, [h | t]) do
    IO.inspect(fold_left(op, (op.(initial, h)), t),label: "fold left")
  end
end
