defmodule Ex229 do
  defstruct length: 0, struct: nil

  def make_branch(length, struct) do
    %Ex229{length: length, struct: struct}
  end

  def make_mobile(left, right) do
    [left, right]
  end

  def left_branch([left | _right]) do
    left
  end

  def right_branch(mobile) when is_list(mobile) do
    Enum.at(mobile, 1)
  end

  def branch_length(branch) do
    branch.length
  end

  def branch_structure(branch) when is_struct(branch) do
    branch.struct
  end

  def total_weight([]) do
    0
  end

  def total_weight(struct) when is_number(struct) do
    struct
  end

  def total_weight(branch) when is_struct(branch) do
    branch.struct
  end

  def total_weight([left | right]) do
    total_weight(left.struct) + total_weight(right)
  end

  def get_torque(left, right) do
    lWeight = total_weight(left.struct)
    rWeight = total_weight(right.struct)

    lTorque = lWeight * branch_length(left)
    rTorque = rWeight * branch_length(right)

    lTorque == rTorque
  end

  def is_balanced(mobile) do
    left = left_branch(mobile)
    right = right_branch(mobile)
    get_torque(left, right)
  end
end
