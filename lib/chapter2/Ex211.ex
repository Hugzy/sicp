defmodule Ex211 do


  def fast_mult(i1, i2) do
      %{car: i1x, cdr: i1y} = i1
      %{car: i2x, cdr: i2y} = i2



      # Aim, find the min and max value of the above four values
      # using only two calculations or less
      # all the other cases requires two calculations one for lower and one for upper most likely
      # How can i calculate upper and lower in one calculation?
      # lower = negative of either value * max of rest : one negative number one negative number three cases
      # Lower = max negative of either two values * negative of max of non negative values
      # Lower = max of either three values * one positive value
      # Upper cannot be less than lower




      {min, max} = case {i1x, i1y, i2x, i2y} do
         _ when i1x <= 0 -> one_negative(i1x, [i1y, i2x, i2y])
         _ when i2x <= 0 -> one_negative(i2x, [i1x, i1y, i2y])
         _ when i1x <= 0 and i2x <= 0 -> two_negatives([i1x, i2x], [i1y, i2y])
         _ when i1x <= 0 and i1y <= 0 -> two_negatives([i1y, i2y], [i1x, i2x])
         _ when i2x <= 0 and i2y <= 0 -> two_negatives([i1y, i2y], [i1x, i2x])
         _ when i1x <= 0 and i2x <= 0 and i2y <= 0 -> three_negatives([i1x, i2x, i2y], i1y)
         _ when i1x <= 0 and i2x <= 0 and i1y <= 0 -> three_negatives([i1x, i2x, i1y], i2y)
         _ when i1x <= 0 and i1y <= 0 and i2x <= 0 and i2y <= 0 -> four_negatives([i1x, i1y, i2x, i2y])
         _ -> zero_negatives([i1x, i1y, i2x, i2y])
      end
      Ex27.make_interval(min, max)
  end

  def zero_negatives(positives) do
    :noop
  end

  def one_negative(negative, positives) do
    local_max = Enum.max(positives)
    min = negative * local_max
    max = Enum.sort(positives)
    |> Enum.take(2)
    |> Enum.sum()

    {min, max}
  end

  def two_negatives(negatives, positives) do
    min = Enum.min(negatives)
    max = Enum.max(positives)
    min * max
  end

  def three_negatives(negatives, positive) do
    min = Enum.min(negatives)
    min * positive
  end

  def four_negatives(negatives) do
    :noop
  end
end
