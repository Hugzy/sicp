defmodule Ex211 do

  def midpoint(segment) do
    x1 = IO.inspect(segment.x.car)
    x2 = IO.inspect(segment.y.car)
    y1 = IO.inspect(segment.x.cdr)
    y2 = IO.inspect(segment.y.cdr)

    xMid = (x1 + x2) / 2
    yMid = (y1 + y2) / 2

    IO.inspect(%Util.Pair{car: xMid, cdr: yMid})
  end

end
