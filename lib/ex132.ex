defmodule Ex132 do
  def accumulate(a,b) do
    plus1 = &(&1 + 1)
    sum = &(&1 + &2)
    product = &(&1 * &2)
    sum_iter = accumulate_iter(a, b, plus1, &(&1 + &2), 0)
    product_iter = accumulate_iter(a, b, plus1, &(&1 * &2), 1)
    sum_rec = accumulate_rec(a, b, 0, plus1, sum)
    product_rec = accumulate_rec(a, b, 1, plus1, product)
    [sum_iter, product_iter, sum_rec, product_rec]
  end

  def accumulate_rec(a,b, terminator, next, operation) do
    if a > b do
      terminator
    end
    operation.(a, accumulate_rec(next.(a), b, terminator, next, operation))
  end

  def accumulate_iter(a, b, next, operation, acc) do
    if a > b do
      acc
    else
      accumulate_iter(next.(a), b, next, operation, operation.(a, acc))
    end
  end
end
