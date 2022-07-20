defmodule IntervalHelpers do
  def new(x \\ 3, y \\ 7, x1 \\ 5, y1 \\ 8) do
    i1 = %Util.Interval{
      car: x,
      cdr: y
    }

    i2 = %Util.Interval{
      car: x1,
      cdr: y1
    }

    %{:first => i1, :second => i2}
  end
end
