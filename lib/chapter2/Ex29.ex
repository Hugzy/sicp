defmodule Ex29 do
  def width(interval) do
    lower = interval.car
    upper = interval.cdr

    (upper-lower)/2
  end
end
