defmodule Ex131 do
  def product(a,b) do
    IO.inspect("Recursive")
    IO.inspect(product_recursive(a, b, fn x -> x+1 end))
    IO.inspect("Iterative")
    IO.inspect(product_iter(a, b, fn x -> x+1 end, 1))
  end

  def product_tests(a,b) do
    plus1 = &(&1 + 1)
    [product_recursive(a,b, plus1), product_iter(a,b, plus1, 1)]
  end

  def product_recursive(a, b, next) do
    if a > b do
      1
    else
      (a * (product_recursive(next.(a), b, next)))
    end
  end

  def product_iter(a, b, next, acc) do
    if a > b do
      acc
    else
      product_iter(next.(a), b, next, acc * a)
    end
  end
end
