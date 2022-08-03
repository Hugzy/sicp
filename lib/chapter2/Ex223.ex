defmodule Ex223 do
  def for_each([h|t], action) do
      action.(h)
      for_each(t, action)
  end
end
