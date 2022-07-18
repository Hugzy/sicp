defmodule Ex134 do
  def f(fun) do
    fun.(2)
  end

  def square_of_two do
    f(fn x -> x*x end)
  end

  @doc """
    calling this does not as yield an infinite recursivon as i thought, utilizing the
    substitution model yielded a different result

    f.(f)
    f.(2)
    2.(2) -> error since two is not a function
  """
  def infinity do
    f(&Ex134.f/1)
  end

end
