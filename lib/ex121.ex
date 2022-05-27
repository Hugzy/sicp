defmodule Ex121 do
  def smallest_divisor(n) do
    find_divisor(n, 2)
  end

  def find_divisor(n, test_divisor)  do
    case { test_divisor } do
       { test_divisor } when (test_divisor * test_divisor) > n -> n
       { test_divisor } when trunc(rem(n,test_divisor)) == 0 -> test_divisor
       _ -> find_divisor(n, (test_divisor+1))
    end
  end
end
