defmodule Ex143 do
  def square(x) do
    x*x
  end

  def compose(f, g) do
    fn x -> f.(g.(x)) end
  end

  def repeated(func, fuel) do
    repeated_core(func, fuel)
  end

  defp repeated_core(func, fuel) do
    if fuel < 1 do
      fn x -> x end
    else
      compose(func, repeated_core(func, fuel - 1))
    end
  end
end
