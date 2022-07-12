defmodule Ex21 do
  def print_rational(rational) do
    IO.puts("#{rational.car}/#{rational.cdr}")
  end

  def make_rational(car, cdr) do
    rat = Util.Pair.new(car, cdr)
    print_rational(rat)
  end
end
