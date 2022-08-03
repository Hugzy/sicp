defmodule Ex221 do
  def square_list([], :cons) do
    []
  end
  def square_list([h | t], :cons) do
    %Util.Pair{car: h * h, cdr: square_list(t, :cons)}
  end

  def square_list(items, :map) do
    Enum.map(items, fn x -> x*x end)
  end
end
