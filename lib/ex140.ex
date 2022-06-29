defmodule Ex140 do
  @dx 0.00001

  def sqrt(x) do
    nm(fn y -> ((square(y)) - x) end, 1.0)
  end

  def square(x) do
    x * x
  end

  def nm(g, guess) do
    IO.inspect("nm")
    IO.inspect(Ex135.fixed_point((newton_transform(g)), guess), label: "fixed point result: ")
  end

  def newton_transform(g) do
    IO.inspect("newtons method")
    fn x -> (g.(x) / ((deriv(g)).(x))) - x end
  end

  def deriv(g) do
    IO.inspect("deriv")
    fn x ->
      IO.inspect("deriv.lambda")
      (g.((x + @dx)) - g.(x)) / @dx
    end
  end
end
