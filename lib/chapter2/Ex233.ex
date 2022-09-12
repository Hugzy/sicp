defmodule Ex233 do
  def map(p, sequence) do
    Enum.reduce(sequence, [], fn x, y -> y ++ [p.(x)] end)
  end

  def append(seq1, seq2) do
    Enum.reduce(seq2, seq1, fn s1, s2 -> s2 ++ [s1] end)
  end

  def length(seq) do
    Enum.reduce(seq, 0, fn _x,y -> y+1 end)
  end
end
