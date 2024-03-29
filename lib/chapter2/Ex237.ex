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
    Enum.reduce(map(&*/2, [v, w]), 0 , &+/2)
  end

  def matrix_mul_vector(m, v) do
    Enum.map(m, fn mi -> dot_product(mi, v) end)
  end

  def cons(elem, init) do
    init ++ [elem]
  end

  def transpose(mat) do
    Ex236.accumulate_n(&cons/2, [], mat)
  end

  def matrix_mul_matrix(m, n) do
    tn = transpose(n)
    result = Enum.map(m, fn mi ->
      Enum.map(tn, fn tni ->
        dot_product(mi, tni)
      end)
    end)
    result
  end
end
