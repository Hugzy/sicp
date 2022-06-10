defmodule Ex138 do
  def di(i) do
    if rem(i,3) == 2 do
      (i+1) / 1.5
    else
      1
    end
  end
  def ni(_i) do
    1
  end

  def e_euler(k) do
    2 + Ex137.cont_frac(&Ex138.ni/1, &Ex138.di/1, k, 0)
  end
end
