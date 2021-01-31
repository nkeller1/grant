require 'minitest/autorun'
require './soulation'

class SoulationTest < Minitest::Test

  def test_for_4
    a = [1,2,3,5,-1]
    x = soulation(a)

    assert_equal x,  4
  end

  def test_negative_nums
    a = [-1, -3]
    x = soulation(a)

    assert_equal x,  1
  end

  def test_for_max
    a = [1,2,3]
    x = soulation(a)

    assert_equal x,  4
  end

  def test_for_large_gap
    a = [1,2,3,4,5,10000]
    x = soulation(a)

    assert_equal x,  6
  end

  def test_multiple_nums
    a = [1,1,1,2,3,4,5,6,10000]
    x = soulation(a)

    assert_equal x,  7
  end
end
