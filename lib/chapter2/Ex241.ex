defmodule Ex241 do
  def triplets(n, sum) do
    triplets = make_triplet(n)
    triplets |>
    Enum.filter(fn enum -> Enum.sum(enum) == sum end)
  end

  defp make_triplet(n) do
    i_seq = Ex240.enumerate_interval(1, n)
    Enum.map(i_seq, fn i ->
      j_seq = Ex240.enumerate_interval(1, i-1)
      Enum.map(j_seq, fn j ->
        k_seq = Ex240.enumerate_interval(1, j-1)
        Enum.map(k_seq, fn k -> [i, j, k] end)
      end)
      |> Enum.flat_map(fn x -> x end)
    end) |>
    Enum.flat_map(fn x -> x end) |>
    Enum.reject(fn x -> is_nil(x) end)
  end
end
