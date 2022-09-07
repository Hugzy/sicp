defmodule Ex230 do

  def square_tree([]) do
    nil
  end
  def square_tree(i) when is_number(i) do
    IO.inspect(i*i)
  end

  def square_tree([h | t]) do
    [square_tree(h) ++ square_tree(t)] |>
    Enum.reject(&is_nil/1)
  end
end
