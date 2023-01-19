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
  def prime?([i,j]) do
    prime_test(i + j, 2)
  end

  def prime_test(x, divisor) do
    cond do
      divisor * divisor > x -> true
      rem(x, divisor) == 0 -> false
      true -> prime_test(x, divisor+1)
    end
  end

  def prime_sum_pairs(n) do
    unique_pairs(n) |>
    Enum.filter(fn x -> prime?(x) end) |>
    Enum.map(fn [i,j] -> [i, j, i+j] end) |>
  end

  def map_j(i, j) when i > j do
    [i,j]
  end

  def map_j(_,_) do
  end
end
