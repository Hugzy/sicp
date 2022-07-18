defmodule Chapter2.Ex26 do
  def zero do
    fn _f -> fn x -> x end end
  end

  def add1(n) do
    fn f ->
      fn x ->
        f.(n.(f), x)
      end
     end
  end

  def one do
    fn f ->
      fn x ->
        f.(x)
      end
    end
  end

  def two do
    fn f ->
      fn x ->
        f.(f.(x))
      end
    end
  end

  def add(x,y) do

  end
end
