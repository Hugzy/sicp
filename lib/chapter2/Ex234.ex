defmodule Ex234 do
  def horner_eval(x, seq) do
    # For some reason, the book reads the list backwards when accumulation so instead of going from positions 0..n it gores n..0 which messes up the ordering and then the algorithm because elixir does the opposite
    Enum.reverse(seq) |>
    Enum.reduce(fn coeff, terms -> ((terms* x) + coeff) end)
    # Enum.reduce(seq, fn coeff, terms -> "(+ (* #{terms} x) #{coeff})" end)
  end
end
