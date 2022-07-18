defmodule Ex135 do
  @t1 0.00001

  def main() do
    Ex135.fixed_point(fn x -> :math.log(1000)/:math.log(x) end, 5)
  end

  def fixed_point(f, guess) do
    try_guess(f, guess)
  end

  defp try_guess(f, guess) do
    next = f.(guess)
    if close_enough(guess, next) do
      next
    else
      try_guess(f, next)
    end
  end

  defp close_enough(x,y) do
    (abs((x-y))) < @t1
  end
end
