defmodule Ex238 do
  def fold_left(op, result, []) do
    result
  end

  def fold_left(op, initial, [h | t]) do
    if t == [] do
      initial
    else
      fold_left(op, (op.(initial, h)), t)
    end
  end
end
