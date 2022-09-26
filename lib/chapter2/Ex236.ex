defmodule Ex236 do

  def select_heads([]) do
    []
  end

  def select_heads(seq) do
    seq |>
      Enum.map(fn [h | _] -> h end)
  end

  def select_tails(seq) do
    Enum.map(seq, fn [_ | t] -> t end)
    # List.flatten()
  end

  def accumulate_n(_op, _init, []) do
    []
  end

  def accumulate_n(op, init, seqs) do
    head = Enum.reduce(select_heads(seqs), init, op)
    head ++ accumulate_n(op, init, select_tails(seqs))
  end
end
