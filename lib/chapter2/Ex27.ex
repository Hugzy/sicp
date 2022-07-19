defmodule Chapter2.Ex27 do

  @spec upper_bound(%{:car => any, :cdr => any}) :: any
  def upper_bound(interval) do
    max(interval.car, interval.cdr)
  end

  def lower_bound(interval) do
    min(interval.car, interval.cdr)
  end

  def sub_interval(x, y) do
    car = lower_bound(x) - upper_bound(y)
    cdr = upper_bound(x) - lower_bound(y)
    %Util.Interval{
      car: car,
      cdr: cdr
    }
  end

  def make_interval(x,y) do
    %Util.Interval{
      car: x,
      cdr: y
    }
  end

  def add_interval(x,y) do
    lower = lower_bound(x) + lower_bound(y)
    upper = upper_bound(x) + upper_bound(y)

    make_interval(lower, upper)
  end

  def mul_interval(x,y) do
    p1 = lower_bound(x) * lower_bound(y)
    p2 = lower_bound(x) * upper_bound(y)
    p3 = upper_bound(x) * lower_bound(y)
    p4 = upper_bound(x) * upper_bound(y)

    {min, max} = Enum.min_max([p1,p2,p3,p4])

    make_interval(min, max)
  end

  def div_intervald(x,y) do
    lower_y = 1 / upper_bound(y)
    upper_y = 1 / lower_bound(y)

    mul_interval(x, make_interval(lower_y, upper_y))
  end
end
