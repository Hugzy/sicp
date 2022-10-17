defmodule Ex240 do
 def unique_pairs(n) do
  i_seq = 1..n
  Enum.map(i_seq, fn i ->
    j_seq = 1..(i-1)
    Enum.map(j_seq, fn j -> [i, j] end)
  end) |>
  Enum.flat_map(fn x -> x end)
 end
end
