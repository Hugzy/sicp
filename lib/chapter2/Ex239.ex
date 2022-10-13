defmodule Ex239 do
  def reverse(:foldr, sequence) do
    Ex238.fold_right(fn x,y -> [x,y] end, [], sequence)
  end

  def reverse(:foldl, sequence) do
    :nil
  end
end
