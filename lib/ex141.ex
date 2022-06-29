defmodule Ex141 do


  #
  #  (((double (double double)) inx) 5)
  #
  #

  def main(x) do
    double(fn x -> double(fn x -> double(fn x -> x+1 end, x) end, x) end, x)
  end

  def double(fun, x) do
    fn -> fun.(fun.(x)) end
  end
end
