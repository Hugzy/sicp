defmodule Ex143 do
  def square(x), do: x * x
  def compose(f, g) do
    fn x -> IO.inspect(f.(g.(x))) end
  end

  def repeated(func, fuel, state) do
    # IO.inspect(fuel, label: "fuel")

    if fuel == 1 do
      func
    else
      compose(func, repeated(func, fuel - 1, state))
    end
  end
end
