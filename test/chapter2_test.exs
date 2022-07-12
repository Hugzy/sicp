defmodule Chapter2 do
  use ExUnit.Case
  test "Ex2.2" do
    line = %Util.LineSegment{
      x: %Util.Pair{car: 5, cdr: 3},
      y: %Util.Pair{car: -4, cdr: -7}
    }
    assert Ex22.midpoint(line) == %Util.Pair{car: 0.5, cdr: -2}
  end

end
