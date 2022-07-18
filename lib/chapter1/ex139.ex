defmodule Ex139 do

  def tan_cf(x, k) do
    Ex137.cont_frac(fn i ->
      if i == 1 do
        x
      else
        - (x*x)
      end
    end, fn i -> ((i*2) - 1) end,
    k,
    0)
  end
end
