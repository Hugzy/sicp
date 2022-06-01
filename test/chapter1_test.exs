defmodule Chapter1 do
  use ExUnit.Case
  doctest Sicp

  test "Ex 1.21" do
    assert Ex121.smallest_divisor(199) == 199
    assert Ex121.smallest_divisor(1999) == 1999
    assert Ex121.smallest_divisor(19999) == 7
  end

  @tag :skip #Is pretty slow, so unskip if you want to run it
  test "Ex 1.22" do
    assert [{_, %{is_prime: true, n: 1009}}, {_, %{is_prime: true, n: 1013}}, {_, %{is_prime: true,n: 1019}}] = Ex122.sfp(1000, 10000)
    assert [{_, %{is_prime: true, n: 10007}}, {_, %{is_prime: true, n: 10009}}, {_, %{is_prime: true,n: 10037}}] = Ex122.sfp(10000, 100000)
    assert [{_, %{is_prime: true, n: 100003}}, {_, %{is_prime: true, n: 100019}}, {_, %{is_prime: true,n: 100043}}] = Ex122.sfp(100000, 1000000)
    assert [{_, %{is_prime: true, n: 1000003}}, {_, %{is_prime: true, n: 1000033}}, {_, %{is_prime: true,n: 1000037}}] = Ex122.sfp(1000000, 10000000)

  end
end
