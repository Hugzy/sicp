defmodule Ex146 do
  @t1 0.00001

  def fixed_point(improve, guess) do
    close_enough = fn x,y -> (abs((x-y))) < @t1 end
    iterative_improve(improve, close_enough).(guess)
  end

  def sqrt(x) do
    iterative_improve(
      fn y ->
        (y + (x / y)) / 2
      end,
      fn y ->
        abs((y * y) - x) < @t1
      end
    )
  end

  def compose(f, g), do: fn x -> f.(g.(x)) end

  def iterative_improve(improve, test) do
    fn guess ->
      IO.inspect(guess, label: "guess")
      IO.inspect(test.(guess), label: "test")

      if test.(guess) do
        guess
      else
        iterative_improve(improve, test).(improve.(guess))
      end
    end
  end
end
