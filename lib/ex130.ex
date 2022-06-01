defmodule Ex130 do

  def sum(a,b) do
    sum(fn x -> x end, a, fn x -> x+1 end, b)
  end

  def sum(term, a, next, b) do
    if (a > b) do
      0
    else
      (term.(a) + (sum(term, next.(a), next, b)))
    end
  end

  def sum_iter(a,b) do
    sum_iter(fn x -> x end, a, fn x -> x+1 end, b)
  end
  def sum_iter(term, a, next, b) do
    iter(term, a, next, b, 0)
  end

  def iter(term, a, next, b, acc) do
    IO.inspect([a, b, acc])
    if a > b or a > 10 do
      acc
    end
    iter(term, next.(a), next, b, acc + term.(a))
  end
end
