defmodule Ex217 do
  def last_pair(list) do
    [h|t] = list
    if t == [] do
      h
    else
      last_pair(t)
    end
  end
end
