defmodule Ex1 do
  def double(x) do
    x*2
  end

  def halve(x) do
    trunc(x/2)
  end

  def mult(a,b) do
    IO.inspect({a, b})
    case {a,b} do
       {0, b} -> 0
       {a, 0} -> 0
       {a, b} when rem(b, 2) == 0 -> double(mult(a, (halve(b))))
       {_, _} -> a + (mult(a, (b - 1)))
    end
  end

  def rpm(a,b) do
    iter_mult(a,b,0)
  end

  def iter_mult(a,b,product) do
    IO.inspect({a, b})
    case {a,b} do
       {0, b} -> product
       {a, 0} -> product
       {a, b} when rem(b, 2) == 0 -> iter_mult(a,(halve(b)),(double(product)))
       #{a, b} when rem(b, 2) == 0 -> double(mult(a, (halve(b))))
       {_ ,_} -> iter_mult(a, (b - 1), (product + a))
    end
  end
end
