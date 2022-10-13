defmodule Ex239 do
  def reverse(:foldr, sequence) do
    Ex238.fold_right(fn x,y -> y ++ [x] end, [], sequence)
  end

  def reverse(:foldl, sequence) do
    Ex238.fold_left(fn x,y -> [y | x] end, [], sequence)
  end
end
