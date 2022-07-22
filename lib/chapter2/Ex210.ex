defmodule Ex210 do
  def div_interval(x,y) do
    case y do
       %Util.Interval{car: 0, cdr:  _} -> raise ArgumentError, message: "argument cannot contain zero"
       %Util.Interval{car: _, cdr: 0} -> raise ArgumentError, message: "argument cannot contain zero"
    end
    lower_y = 1 / Ex27.upper_bound(y)
    upper_y = 1 / Ex27.lower_bound(y)
    Ex27.mul_interval(x, Ex27.make_interval(lower_y, upper_y))
  end
end
