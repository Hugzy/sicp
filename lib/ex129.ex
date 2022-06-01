defmodule Ex129 do
  @funs  ~w(leftrect midrect rightrect trapezium simpson)a

  def  leftrect(f, left,_right), do: f.(left)
  def   midrect(f, left, right), do: f.((left+right)/2)
  def rightrect(f,_left, right), do: f.(right)
  def trapezium(f, left, right), do: (f.(left)+f.(right))/2
  def   simpson(f, left, right), do: (f.(left) + 4*f.((left+right)/2.0) + f.(right)) / 6.0

  def integrate(a,b,n) do
    integrate(fn x -> x*x*x end, a,b,n)
  end

  def integrate(f, a, b, steps) when is_integer(steps) do
    delta = (b - a) / steps
    Enum.each(@funs, fn fun ->
      total = Enum.reduce(0..steps-1, 0, fn i, acc ->
        left = a + delta * i
        acc + apply(Ex129, fun, [f, left, left+delta])
      end)
      :io.format "~10s : ~.6f~n", [fun, total * delta]
    end)
  end

  def simpsons(a,b,n) do
    simpsons(fn x -> x*x*x end, a,b,n)
   end
   defp simpsons(f, a, b, steps) do
    delta = (b-a)/steps
    total = Enum.reduce(0..steps-1, 0, fn i, acc ->
      left = a+delta*i
      acc + simpson(f, left, left+delta)
    end)
    :io.format "~10s : ~.6f~n", ["simpson", total * delta]
  end
end
