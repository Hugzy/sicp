defmodule Ex137 do
  def main(k) do
    cont_frac(fn _i -> 1.0 end, fn _i -> 1.0 end, k, 0)
  end
  def cont_frac(n, d, fuel, accumulator) do
    if fuel == 0 do
      accumulator
    else
      cont_frac(n, d, fuel - 1, result(n, d, fuel, accumulator))
    end
  end

  def result(n,d,k,accumulator) do
    n.(k)/(d.(k) + accumulator)
  end
end
