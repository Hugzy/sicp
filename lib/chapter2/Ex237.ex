#´Need to finish Ex236 first
defmodule Ex237 do

  def select_heads([]) do
    []
  end
  def select_heads(seq) do
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
    IO.inspect(v, label: "v")
    IO.inspect(w, label: "w")
    Enum.reduce(map(&*/2, [v, w]), 0 , &+/2)
  end

  def matrix_mul_vector(m, v) do
    IO.inspect(Enum.map(m, fn mi -> dot_product(mi, v) end), label: "mul")
  end

  def transpose(mat) do
    # Did this at home, just needs matrix * matrix
    Ex236.accumulate_n([], [], mat)
  end

  def matrix_mul_matrix do

  end
end
