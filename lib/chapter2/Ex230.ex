defmodule Ex230 do
  import Tree
  def square_tree(n) when is_number(n) do
    n*n
  end

  def square_tree(tree) do
    [square_tree(left(tree)), square_tree(right(tree))]
  end
end
