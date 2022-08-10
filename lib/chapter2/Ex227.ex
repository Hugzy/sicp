defmodule Ex227 do
  def deep_reverse([]) do
    []
  end

  def deep_reverse(h) when not is_list(h) do
    [h]
  end

  def deep_reverse([h | t]) when is_list(h) do
    deep_reverse(t) ++ [deep_reverse(h)]
  end

  def deep_reverse([h | t]) do
    deep_reverse(t) ++ deep_reverse(h)
  end
end
