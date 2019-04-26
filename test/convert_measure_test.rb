require 'minitest/autorun'
require './lib/convert_measure'

class ConvertMeasureTest < Minitest::Test
  def test_convert_measure
    assert_equal 39.37, convert_measure(1, :m, :in)
    assert_equal 3.28,  convert_measure(1, :m, :ft)
    assert_equal 0.30,  convert_measure(1, :ft, :m)
    assert_equal 0.51,  convert_measure(20, :in, :m)
  end
end

