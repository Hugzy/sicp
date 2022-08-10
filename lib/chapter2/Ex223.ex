defmodule Ex223 do

  def for_each([h|t], action) do
    action.(h)
    for_each(t, action)
  end

  def for_each([], _) do
    :ok
  end
end
