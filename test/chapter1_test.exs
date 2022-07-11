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

  test "Ex1.29" do
    assert Ex129.simpsons(0, 1, 100) == 0.25
  end

  test "Ex1.30" do
    assert Ex130.sum_test(1,10) == [55,55]
  end

  test "Ex1.31" do
    assert Ex131.product_tests(3,6) == [360, 360]
  end

  test "Ex1.32" do
    assert Ex132.test(3,6) == [18, 360, 18, 360]
  end

  @doc """
  Compute sum of even integers for 1 -> 10
  """
  test "Ex1.33" do
    plus1 = fn x -> x + 1 end
    sum = fn x,y -> x + y end
    evens = fn x -> rem(x, 2) == 0 end
    assert Ex133.filter_reduce(1, 10, plus1, sum, 0, evens) == 30
  end

  test "Ex1.34" do
    assert_raise BadFunctionError, &Ex134.infinity/0
  end

  test "Ex1.35" do
    assert_in_delta Ex135.fixed_point(&:math.cos/1, 1), 0.739, 0.0001
    assert_in_delta Ex135.fixed_point(fn x -> 1 + 1/x end, 1), 1.618, 0.0001
  end

  test "Ex1.36" do
    assert_in_delta Ex135.fixed_point(fn x -> :math.log(1000) / :math.log(x) end, 2), 4.5555, 0.0001
  end

  test "Ex1.37" do
    assert_in_delta Ex137.cont_frac(fn _i -> 1.0 end, fn _i -> 1.0 end, 11, 0), 0.6180, 0.0001
  end

  test "Ex1.38" do
    assert_in_delta Ex138.e_euler(10), :math.exp(1), 0.0001
  end

  test "Ex1.39" do
    assert_in_delta Ex139.tan_cf(1, 100), 1.5574, 0.0001
  end

  test "Ex1.40" do
    #assert Ex140.sqrt(2) == 4
  end

  test "Ex1.42" do
    assert Ex142.main(&(&1 * &1), &(&1 + 1), 6) == 49
  end

  test "Ex1.43" do
    assert Ex143.repeated(&Ex143.square/1, 2).(5) == 625
  end

  # Difficult to test so i just made an empty test
  test "Ex1.44" do
    assert true == true
  end
end
