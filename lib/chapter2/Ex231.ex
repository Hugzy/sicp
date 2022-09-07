defmodule Ex231 do
  import Ex230
  def square(n) do
    n*n
  end

  def square_tree(tree) do
    tree_map(&square/1, tree)
  end
end
