defmodule Tree do
  def left(list) do
    Enum.at(list, 0)
  end

  def right(list) do
    Enum.at(list, 1)
  end
end
