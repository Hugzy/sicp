defmodule Ex212 do
  def percent_to_dec(percent) do
    percent/100
  end

  def make_center_percent(midpoint, percent) do
    p = percent_to_dec(percent)
    lower_interval = midpoint * p
    upper_interval = midpoint * (1 + p)

    Ex27.make_interval(lower_interval, upper_interval)
  end

  def center(i) do
    Ex27.lower_bound(i) + Ex27.upper_bound(i) / 2
  end

  def percent(%Util.Interval{car: lower_interval, cdr: _} = i) do

    # lower_interval/p = (midpoint * p)/p
    # lower_interval/p = midpoint
    # lower_interval/p = midpoint * lower_interval
    midpoint = center(i)
    midpoint * lower_interval * 100
  end
end
