defmodule Ex214 do
  def to_center_percent(i) do
    center = Ex212.center(i)
    p = Ex212.percent(i)
    {center, p}
  end

  def examine() do
    i1 = Ex212.make_center_percent(10, 15)
    i2 = Ex212.make_center_percent(10, 5)
    i3 = Ex212.make_center_percent(10, 1)
    IO.inspect(i1)
    Enum.map([i1, i2, i3], fn i -> Ex27.div_intervald(i, i) end)
    |> Enum.map(&to_center_percent/1)
  end
end
