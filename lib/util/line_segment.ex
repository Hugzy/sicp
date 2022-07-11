defmodule Util.LineSegment do
  defstruct x: Util.Pair, y: Util.Pair

  def make_line(start, finish) do
    %Util.LineSegment{x: start, y: finish}
  end

end
