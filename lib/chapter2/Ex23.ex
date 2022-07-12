defmodule Chapter2.Ex23 do
  def perimeter() do
  end

  def area(rect) do
    %Util.Pair{car: x1, cdr: y1} = rect.length.x
    %Util.Pair{car: x2, cdr: y2} = rect.length.y
    %Util.Pair{car: x3, cdr: y3} = rect.width.x
    %Util.Pair{car: x4, cdr: y4} = rect.width.y

    length = distance(x1, y1, x2, y2)
    width = distance(x3, y3, x4, y4)

    length * width

  end

  defp distance(x1, y1, x2, y2) do
    :math.sqrt(:math.pow((y1 - x1), 2) + :math.pow((y2 - x2), 2))
  end
end
