defmodule Chapter2 do
  use ExUnit.Case
  test "Ex2.2" do
    line = %Util.LineSegment{
      x: %Util.Pair{car: 5, cdr: 3},
      y: %Util.Pair{car: -4, cdr: -7}
    }
    assert Ex22.midpoint(line) == %Util.Pair{car: 0.5, cdr: -2}
  end

  test "Ex2.7 add" do
    (i1, i2) = IntervalHelpers.new()


  end

  test "Ex2.8" do
    a = %Util.Interval{car: 3, cdr: 6}
    b = %Util.Interval{car: 4, cdr: 8}

    assert Chapter2.Ex27.sub_interval(a,b) == %Util.Interval{car: -5, cdr: 2}
  end

end
