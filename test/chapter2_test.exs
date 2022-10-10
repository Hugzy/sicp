defmodule Chapter2 do
  use ExUnit.Case

  test "Ex2.2" do
    line = %Util.LineSegment{
      x: %Util.Pair{car: 5, cdr: 3},
      y: %Util.Pair{car: -4, cdr: -7}
    }

    assert Ex22.midpoint(line) == %Util.Pair{car: 0.5, cdr: -2}
  end

  test "Ex2.7 add" do
    %{first: i1, second: i2} = IntervalHelpers.new()
    assert Ex27.add_interval(i1, i2) == %Util.Interval{car: 8, cdr: 15}
  end

  test "Ex2.7 subtract" do
    %{first: i1, second: i2} = IntervalHelpers.new()
    assert Ex27.sub_interval(i1, i2) == %Util.Interval{car: -5, cdr: 2}
  end

  test "Ex2.7 multiply" do
    %{first: i1, second: i2} = IntervalHelpers.new()
    assert Ex27.mul_interval(i1, i2) == %Util.Interval{car: 15, cdr: 56}
  end

  test "Ex2.7 divide" do
    %{first: i1, second: i2} = IntervalHelpers.new()
    assert Ex27.div_intervald(i1, i2) == %Util.Interval{car: 0.375, cdr: 1.4000000000000001}
  end

  test "Ex2.8" do
    a = %Util.Interval{car: 3, cdr: 6}
    b = %Util.Interval{car: 4, cdr: 8}

    assert Ex27.sub_interval(a, b) == %Util.Interval{car: -5, cdr: 2}
  end

  test "Ex2.9" do
    a = %Util.Interval{car: 3, cdr: 6}
    b = %Util.Interval{car: 4, cdr: 8}

    oracle = Ex29.width(Ex27.add_interval(a, b))
    assert Ex29.width_of_two(a, b, &Ex27.add_interval/2) == oracle

    oracle1 = Ex29.width(Ex27.mul_interval(a, b))
    assert Ex29.width_of_two(a, b, &Ex27.mul_interval/2) == oracle1
  end

  test "Ex2.210" do
    x = %Util.Interval{car: 1, cdr: 1}

    y1 = %Util.Interval{car: 0, cdr: 1}
    y2 = %Util.Interval{car: 1, cdr: 0}

    assert_raise ArgumentError, fn -> Ex210.div_interval(x, y1) end
    assert_raise ArgumentError, fn -> Ex210.div_interval(x, y2) end
  end

  @tag :skip
  test "Ex2.11" do
    %{first: i1, second: i2} = IntervalHelpers.new(-1)
    assert Ex211.fast_mult(i1, i2) == %Util.Interval{car: -8, cdr: 56}

    %{first: i1, second: i2} = IntervalHelpers.new(3, 7, -1)
    assert Ex211.fast_mult(i1, i2) == %Util.Interval{car: -8, cdr: 56}
  end

  test "Ex2.12" do
    assert Ex212.make_center_percent(6, 50) == Ex27.make_interval(3, 9)
    assert Ex212.percent(Ex27.make_interval(3, 9)) == 50
  end

  test "Ex2.13" do
  end

  test "Ex217" do
    list = [1, 2, 3, 4]
    assert Ex217.last_pair(list) == 4
  end

  test "Ex218" do
    list = [1, 2, 3, 4]
    assert Ex218.reverse(list) == [4, 3, 2, 1]
  end

  test "Ex219 cc" do
    assert Ex219.count_change(100) == 292
  end

  test "Ex219" do
    assert Ex219.cc_list(100, [50, 25, 10, 5, 1]) == 292
  end

  test "Ex220" do
    assert Ex220.same_parity([1, 2, 3, 4, 5, 6, 7]) == [1, 3, 5, 7]
    assert Ex220.same_parity([2, 3, 4, 5, 6, 7]) == [2, 4, 6]
  end

  test "Ex221" do
    list = [1, 2, 3, 4]

    result = %Util.Pair{
      car: 1,
      cdr: %Util.Pair{
        car: 4,
        cdr: %Util.Pair{
          car: 9,
          cdr: %Util.Pair{car: 16, cdr: []}
        }
      }
    }

    assert Ex221.square_list(list, :cons) == result
  end

  test "Ex227" do
    assert Ex227.deep_reverse([[1, 2], [3, 4]]) == [[4, 3], [2, 1]]
  end

  test "Ex228" do
    tree = [[1, 2], [3, 4]]
    assert Ex228.fringe(tree) == [1, 2, 3, 4]
    assert Ex228.fringe([tree, tree]) == [1, 2, 3, 4, 1, 2, 3, 4]
  end

  test "Ex229 a" do
    branchA = Ex229.make_branch(3, 4)
    branchB = Ex229.make_branch(5, 6)
    branchC = Ex229.make_branch(7, branchB)

    assert Ex229.make_mobile(branchA, branchB) == [branchA, branchB]

    assert Ex229.branch_length(branchA) == 3
    assert Ex229.branch_structure(branchA) == 4
    assert Ex229.branch_structure(branchC) == branchB
  end

  test "Ex229 b" do
    a = Ex229.make_branch(3, 4)
    b = Ex229.make_branch(5, 6)
    c = Ex229.make_branch(7, b)

    simple_mobile = Ex229.make_mobile(a, b)
    assert Ex229.total_weight(simple_mobile) == 10

    mobile = Ex229.make_mobile(a, c)
    assert Ex229.total_weight(mobile) == 10
  end

  test "Ex229.c" do
    import Ex229
    #          4  |  5
    #        +----+-----+
    #        6        3 |     9
    #               +---+---------+
    #               7             8
    m1 =
      make_mobile(
        make_branch(4, 6),
        make_branch(
          5,
          make_mobile(
            make_branch(3, 7),
            make_branch(9, 8)
          )
        )
      )

    assert is_balanced(m1) == false

    #         4   |  2
    #        +----+--+
    #        6    5  |    10
    #          +-----+----------+
    #          8                4

    m2 =
      make_mobile(
        make_branch(4, 6),
        make_branch(
          2,
          make_mobile(
            make_branch(5, 8),
            make_branch(10, 4)
          )
        )
      )

    assert is_balanced(m2) == true
  end

  test "Ex229.d" do
    # Because i'm writing in elixir and there is no official pair representation everywhere there is used a list would have to be changed to use a struct.
    # this could however be limited if i had been better
    # at using the left and right selector from the beginning rather than the '|' operator. I suspect there would have to be some major changes
    # to the total_weight function which i might go back and fix later on
    assert true == true
  end

  test "Ex230" do
    tree = [1, [[2, [[3, 4], 5]], [6, 7]]]

    result = [1, [[4, [[9, 16], 25]], [36, 49]]]

    assert Ex230.square_tree(tree) == result
  end

  test "Ex231" do
    tree = [1, [[2, [[3, 4], 5]], [6, 7]]]

    result = [1, [[4, [[9, 16], 25]], [36, 49]]]

    assert Ex231.square_tree(tree) == result
  end

  @tag :skip
  test "Ex232" do
    result = [[], [3], [2], [2, 3], [1], [1, 3], [1, 2], [1, 2, 3]]
    assert Ex232.subsets([1, 2, 3]) == result
  end

  test "Ex233" do
    import Functions
    test = [1,2,3,4,5]

    result = [1,4,9,16,25]
    assert Ex233.map(&product/1, test) == result

    result = test ++ test
    assert Ex233.append(test, test) == result

    result = 5
    assert Ex233.length(test) == result
  end

  test "Ex234" do
    assert Ex234.horner_eval(2, [1,3,0,5,0,1]) == 79
    # IO.inspect(Ex234.horner_eval(2, [1,3,0,5,0,1]))
    assert Ex234.horner_eval(2, [2,3,0,5,0,2]) == 112
  end

  test "Ex235" do
    test = [[1,2], [3,4]] # 4 leaves
    assert Ex235.count_leaves_acc(test) == 4
  end

  test "Ex236" do
    test = [[1,2,3], [4,5,6], [7,8,9], [10,11,12]]

    assert Ex236.select_heads(test) == [1,4,7,10]
    assert Ex236.select_tails(test) == [[2,3], [5,6], [8,9], [11,12]]

    assert Ex236.accumulate_n(&+/2, 0, test) == [22,26,30]
  end

  test "Ex237" do
    matrix = [[1,2,3,4], [4,5,6,6], [6,7,8,9]]
    vector = [1,2,3]

    assert Ex237.map(&+/2, matrix) == [11, 14, 17, 19]
    assert Ex237.dot_product(hd(matrix), hd(tl(matrix))) == 56
    assert Ex237.transpose(matrix) == [[1,4,6], [2,5,7], [3,6,8], [4,6,9]]

  end
end
