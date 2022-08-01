defmodule Ex218 do
  def reverse([]) do
    []
  end

  def reverse([h|t]) do
    reverse(t) ++ [h]
  end
end
