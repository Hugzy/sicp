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
    %{first: i1, second: i2} = IntervalHelpers.new()
    assert Ex27.add_interval(i1, i2) == %Util.Interval{car: 8, cdr: 15}
  end

  test "Ex2.7 subtract" do
    %{first: i1, second: i2} = IntervalHelpers.new()
    assert Ex27.sub_interval(i1, i2) == %Util.Interval{car: -5, cdr: 2}
  end

  test "Ex2.7 multiply" do
    %{first: i1, second: i2} = IntervalHelpers.new()
    assert Ex27.mul_interval(i1, i2) == %Util.Interval{car: 15, cdr: 56}
  end

  test "Ex2.7 divide" do
    %{first: i1, second: i2} = IntervalHelpers.new()
    assert Ex27.div_intervald(i1, i2) == %Util.Interval{car: 0.375, cdr: 1.4000000000000001}
  end

  test "Ex2.8" do
    a = %Util.Interval{car: 3, cdr: 6}
    b = %Util.Interval{car: 4, cdr: 8}

    assert Ex27.sub_interval(a,b) == %Util.Interval{car: -5, cdr: 2}
  end

  test "Ex2.9" do
    a = %Util.Interval{car: 3, cdr: 6}
    b = %Util.Interval{car: 4, cdr: 8}

    oracle = Ex29.width((Ex27.add_interval(a,b)))
    assert Ex29.width_of_two(a,b,&Ex27.add_interval/2) == oracle

    oracle1 = Ex29.width((Ex27.mul_interval(a,b)))
    assert Ex29.width_of_two(a,b,&Ex27.mul_interval/2) != oracle
  end

  test "Ex2.210" do
    x = %Util.Interval{car: 1, cdr: 1}

    y1 = %Util.Interval{car: 0, cdr: 1}
    y2 = %Util.Interval{car: 1, cdr: 0}

    assert_raise ArgumentError, fn -> Ex210.div_interval(x, y1) end
    assert_raise ArgumentError, fn -> Ex210.div_interval(x, y2) end
  end
end
