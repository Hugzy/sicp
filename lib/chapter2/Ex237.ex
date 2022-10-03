#´Need to finish Ex236 first
defmodule Ex237 do
  def select_heads(seq) do
    IO.inspect(seq, label: "seq")
    seq |>
      Enum.map(fn [h | _] -> h end)
  end

  def select_tails(seq) do
    Enum.map(seq, fn [_ | t] -> t end)
  end

  def map(op, seqs) do
    if hd(seqs) == [] do
      []
    else
    head = Enum.reduce(select_heads(seqs), op)
    [head | map(op, select_tails(seqs))]
    end
  end

  def dot_product(v, w) do
    Enum.reduce(&+/2, 0, map(&*/2, [v, w]))
  end

  def matrix_mul_vector(m, v) do
  end

  def transpose(mat) do

  end

  def matrix_mul_matrix do

  end
end
