defmodule Ex142 do
  def main(f, g, x) do
    composition(f,g).(x)
  end

  def composition(f, g) do
    fn x -> f.(g.(x)) end
  end
end
