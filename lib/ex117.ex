defmodule Ex117 do
  defp halve(x) do
    x / 2
  end

  def double(x) do
    x * 2
  end

  def ex1_17(x, y) when y == 0 or x == 0 do
    0
  end

  def even?(x) do
    rem(x, 2) == 0
  end

  def ex1_17(x, y) do
    case {x, y} do
       {0, _y} -> 1
       {_x, 0} -> 1
       {x, y} when rem(y, 2) == 0 -> double(ex1_17(x, halve(y)))
       {x,y} -> x + ex1_17(x, y - 1)
    end
  end
end
