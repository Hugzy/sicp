defmodule Ex220 do
  require Integer

  def same_parity([h | t]) do
    if rem(h, 2) == 1 do
      odds = Enum.filter(t, fn x -> Integer.is_odd(x) end)
      [h | odds]
    else
      evens = Enum.filter(t, fn x -> Integer.is_even(x) end)
      [h | evens]
    end
  end
end
