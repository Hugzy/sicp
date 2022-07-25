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


      result = case {i1x, i1y, i2x, i2y} do
         _ when i1x <= 0 -> one_negative(i1x, [i1y, i2x, i2y])
         _ when i2x <= 0 -> one_negative(i2x, [i1x, i1y, i2y])
         _ when i1x <= 0 and i2x <= 0 -> two_negatives([i1x, i2x], [i1y, i2y])
         _ when i1y <= 0 and i2y <= 0 -> two_negatives([i1y, i2y], [i1x, i2x])
         _ when i1x <= 0 and i2x <= 0 and i1y <= 0 -> three_negatives([i1x, i2x, i1y], i2y)
         _ when i1x <= 0 and i2x <= 0 and i2y <= 0 -> three_negatives([i1x, i2x, i2y], i1y)
         _ -> :noop
      end
  end

  def one_negative(negative, positives) do
    :noop
  end

  def two_negatives(negatives, positives) do
    :noop
  end

  def three_negatives(negatives, positive) do
    :noop
  end
end
