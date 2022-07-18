defmodule Ex143 do
  def square(x), do: x * x

  def compose(f, g) do
    fn x -> f.(g.(x)) end
  end

  def repeated(func, fuel) do
    if fuel == 1 do
      func
    else
      compose(func, repeated(func, fuel - 1))
    end
  end
end
