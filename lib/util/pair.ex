defmodule Util.Pair do
  defstruct car: nil, cdr: nil

  def new(car, cdr) do
    rat = car / cdr
    IO.inspect(rat, label: "rational")
    is_negative = rat < 0.0
    IO.inspect(is_negative, label: "is negative")

    if is_negative do
      %Util.Pair{car: car, cdr: abs(cdr)}
    else
      %Util.Pair{car: car, cdr: cdr}
    end
  end
end
