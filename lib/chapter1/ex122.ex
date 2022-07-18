defmodule Ex122 do

  def sfp(first, last) do
    Enum.to_list(first..last) |>
    Enum.filter(fn x -> rem(x, 2) == 1 end) |>
    Enum.map(fn x -> :timer.tc(Ex122, :prime, [x]) end) |>
    Enum.filter(fn {_time, result} -> result.is_prime end) |>
    Enum.take(3) |>
    Enum.map(fn x -> IO.inspect(x) end)
 end

  def prime(n) do
    %{n: n, is_prime: Ex121.smallest_divisor(n) == n }
  end

end
