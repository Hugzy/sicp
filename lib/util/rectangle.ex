defmodule Util.Rectangle do
  defstruct length: Util.LineSegment, width: Util.LineSegment
  
  def new(x1, y1, x2, y2) do
    %Util.Rectangle {
      length: %Util.LineSegment{
        x: %Util.Pair {
          car: x1, 
        }
      }
    }
  end
end
