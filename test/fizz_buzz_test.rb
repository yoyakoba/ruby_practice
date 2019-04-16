require 'minitest/autorun'
require './lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal 1, fizz_buzz(1)
    assert_equal 2, fizz_buzz(2)
    assert_equal 'Fizz', fizz_buzz(3)
    assert_equal 'Buzz', fizz_buzz(5)
    assert_equal 'FizzBuzz', fizz_buzz(30)
    assert_equal 0, fizz_buzz(0)
    assert_equal '整数を入力してください', fizz_buzz('a')
    assert_equal '整数を入力してください', fizz_buzz(1.5)
  end
end

