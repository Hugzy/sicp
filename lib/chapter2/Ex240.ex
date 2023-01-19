defmodule Ex240 do
 def unique_pairs(n) do
  i_seq = enumerate_interval(1, n)
  Enum.map(i_seq, fn i ->
    j_seq = enumerate_interval(1, i-1)
    Enum.map(j_seq, fn j ->
      map_j(i, j)
     end)
  end) |>
  Enum.flat_map(fn x -> x end) |>
  Enum.reject(fn x -> is_nil(x) end)
 end

 def enumerate_interval(low, high) when low > high do
  []
 end

 def enumerate_interval(low,high) do
  low..high
end

 def prime_sum_pairs(n) do

 end

 def map_j(i, j) when i > j do
  [i,j]
 end

 def map_j(_,_) do
 end
end
