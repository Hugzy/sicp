defmodule Ex236 do
  def select_heads(seq) do
    IO.inspect(seq, label: "seq")
    seq |>
      Enum.map(fn [h | _] -> h end)
  end

  def select_tails(seq) do
    Enum.map(seq, fn [_ | t] -> t end)
    # List.flatten()
  end

  def accumulate_n(op, init, seqs) do
    if hd(seqs) == [] do
      []
    else
      IO.inspect(seqs, label: "seqs")
      head = Enum.reduce(select_heads(seqs), init, op)
      IO.inspect(head, label: "head")
      [head | accumulate_n(op, init, select_tails(seqs))]
    end
  end
end
