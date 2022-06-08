defmodule Ex135 do
  @tolerance 0.00001

  def fixed_point(f, guess) do

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
    (abs((x-y))) < @tolerance
  end
end
