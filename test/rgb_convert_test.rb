require 'minitest/autorun'
require './lib/rgb_convert'

class RgbConvertTest < Minitest::Test
  def test_rgb_convert
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255,255,255)
    assert_equal '#800f08', to_hex(128, 15, 8)  
  end
end

