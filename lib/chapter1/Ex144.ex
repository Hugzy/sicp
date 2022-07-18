defmodule Ex144 do
  def dx(), do: 0.0001

  def nfoldsmooth(f, fuel) do
    Ex143.repeated(&smooth/1, fuel).(f)
  end

  def smooth(f) do
    fn x ->
      fnegative = f.(x - dx())
      fnew = f.(x)
      fpositive = f.(x + dx())
      average(fnegative, fnew, fpositive)
    end
  end

  def average(fnegative, f, fpositive) do
    (fnegative + f + fpositive) / 3
  end
end
