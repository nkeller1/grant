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

    assert_equal x, 2
  end

  def method_name

  end

end
