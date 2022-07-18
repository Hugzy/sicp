defmodule Ex133 do
  def filter_reduce(a, b, next, operation, acc, filter) do
    if a > b do
      acc
    else
      if filter.(a) do
        filter_reduce(next.(a), b, next, operation, operation.(a, acc), filter)
      else
        filter_reduce(next.(a), b, next, operation, acc, filter)
      end
    end
  end
end
