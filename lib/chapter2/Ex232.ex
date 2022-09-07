defmodule Ex232 do
  # Check if the list is empty
    # If so return an empty list
  # Let rest be the subset of the tail of the list

  def subsets([]) do
    []
  end

  def subsets(s) do
    [h | t] = s
    [h, subsets(t)]
  end

end
