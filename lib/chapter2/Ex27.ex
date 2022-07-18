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
end
