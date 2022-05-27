defmodule Ex129 do
  def simposons(f, a, b, n) do
    h = (b-a)/n
    sum = f.(a) - f.(a+n*h)
    Enum.to_list(1..n) |>
    Enum.reduce(fn i -> (4*f.(a+i*h) + 2*f.(a+(i+1)*h)) end)
    sum = sum * h/3
    IO.inspect(sum)
  end
end
