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
    (Ex27.lower_bound(i) + Ex27.upper_bound(i)) / 2
  end

  def percent(%Util.Interval{car: lower, cdr: upper} = i) do
    center = center(i)
    diff = (upper - center(i))
    (diff / center) * 100
  end
end
