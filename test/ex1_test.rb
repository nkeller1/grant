require 'minitest/autorun'
require 'minitest/pride'
require './lib/ex1'

# this is a palandrum. Check how many letters need to be added to a
# set of words to make the words able to become a palandrum

class Ex1Test < Minitest::Test
  def test_rather_and_harder
    a = 'harder'
    b = 'rather'
    x = solution(a, b)
    # need to add a d and t

    assert_equal x, 2
  end

  def test_go_and_no
    a = 'go'
    b = 'no'
    x = solution(a,b)
    # need to add a g and n

    assert_equal x, 2
  end

  def test_a_zero_scenero
    a = 'cat'
    b = 'tac'
    x = solution(a,b)

    assert_equal x, 0
  end

end
