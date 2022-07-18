defmodule Ex22 do

  def midpoint(segment) do
    x1 = segment.x.car
    x2 = segment.y.car
    y1 = segment.x.cdr
    y2 = segment.y.cdr

    xMid = (x1 + x2) / 2
    yMid = (y1 + y2) / 2

    %Util.Pair{car: xMid, cdr: yMid}
  end

end
