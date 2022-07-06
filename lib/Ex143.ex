defmodule Ex143 do
  def run() do
    Ex143.repeated(&(&1 * &1), 2, 5)
  end

  def repeated(func, result, fuel) do
    repeated_core(func, result, fuel).()
  end

  defp repeated_core(func, result, fuel) do
    IO.inspect(result, label: "result")
    IO.inspect(fuel, label: "fuel")
    if fuel <= 0 do
      func
    else
      outer_func = fn -> IO.inspect(func.()) end
      repeated_core(outer_func, result, fuel - 1)
    end
  end
end
