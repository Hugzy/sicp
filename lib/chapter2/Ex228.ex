defmodule Ex228 do
  def fringe([]) do
    []
  end

  def fringe(h) when not is_list(h) do
    [h]
  end

  def fringe([h | tree]) do
    fringe(h) ++ fringe(tree)
  end
end
