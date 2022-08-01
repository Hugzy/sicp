defmodule Ex219 do
  def count_change(amount) do
    cc(amount, 5)
  end

  def cc_list(amount, coin_values) do
    cond do
      amount == 0 -> 1
      amount < 0 or no_more(coin_values) -> 0
      true ->
        cc_list(amount, except_first_denomination(coin_values)) +
          cc_list(amount - first_denomination_list(coin_values), coin_values)
    end
  end

  def first_denomination_list([h | _t]) do
    h
  end

  def no_more([]) do
    true
  end

  def no_more(_coin_values) do
    false
  end

  def except_first_denomination([_ | t]) do
    t
  end

  def cc(amount, coins) do
    cond do
      amount == 0 -> 1
      amount < 0 or coins == 0 -> 0
      true -> cc(amount, coins - 1) + cc(amount - first_denomination(coins), coins)
    end
  end

  def first_denomination(coins) do
    case coins do
      1 -> 1
      2 -> 5
      3 -> 10
      4 -> 25
      5 -> 50
    end
  end
end
