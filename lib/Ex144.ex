defmodule Ex144 do
  def dx(), do: 0.0001

  def smooth(f) do
    fn x, fuel ->
      smoothing = fn ->
      fnegative = f.(x - dx())
      fnew = f.(x)
      fpositive = f.(x + dx())
      average(fnegative, fnew, fpositive)
      end
      Ex143.repeated(smoothing, fuel)
    end
  end

  def average(fnegative, f, fpositive) do
    (fnegative + f + fpositive) / 3
  end
end
