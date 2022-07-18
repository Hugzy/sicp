defmodule Ex130 do

  def sum_test(a,b) do
    rec = sum(fn x -> x end, a, fn x -> x+1 end, b)
    iter = sum_iter(fn x -> x end, a, fn x -> x+1 end, b)
    [rec, iter]
  end

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
    if a > b do
      acc
    else
      iter(term, next.(a), next, b, acc + term.(a))
    end
  end
end
