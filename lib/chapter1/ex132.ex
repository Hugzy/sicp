defmodule Ex132 do

  @funs ~w(sum_iter product_iter sum_rec product_rec)a

  def plus1(x), do: x + 1
  def sum(x, y), do: x + y
  def product(x,y), do: x * y
  def sum_iter(a,b), do: accumulate_iter(a, b,fn x -> x+1 end, fn x,y -> x + y end, 0)
  def product_iter(a,b), do: accumulate_iter(a, b, fn x -> x+1 end, fn x,y -> x * y end, 1)
  def sum_rec(a,b), do: accumulate_rec(a, b, 0, fn x -> x+1 end, fn x,y -> x + y end)
  @spec product_rec(any, any) :: any
  def product_rec(a,b), do: accumulate_rec(a, b, 1, fn x -> x+1 end, fn x,y -> x * y end)

  def accumulate(a,b) do
    Enum.each(@funs, fn fun ->
      IO.inspect(fun)
      IO.inspect(apply(Ex132, fun, [a,b]))
    end)
  end

  def test(a,b) do
    Enum.map(@funs, fn fun ->
      apply(Ex132, fun, [a,b])
    end)
  end

  def accumulate_rec(a,b, terminator, next, operation) do
    if a > b do
      terminator
    else
      operation.(a, accumulate_rec(next.(a), b, terminator, next, operation))
    end
  end

  def accumulate_iter(a, b, next, operation, acc) do
    if a > b do
      acc
    else
      accumulate_iter(next.(a), b, next, operation, operation.(a, acc))
    end
  end
end
