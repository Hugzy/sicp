defmodule Ex29 do
  def width(interval) do
    lower = interval.car
    upper = interval.cdr

    (upper-lower)/2
  end

  def width_of_two(i1, i2, operator) do
    result = operator.(i1, i2)
    width(result)
  end
end
