require 'minitest/autorun'
require './lib/rgb_convert'

class RgbConvertTest < Minitest::Test
  def test_to_hex
    # 16進数部分が数字のみの場合
    assert_equal '#000000', to_hex(0, 0, 0)

    # アルファベットのみ
    assert_equal '#ffffff', to_hex(255,255,255)
    
    # 数字、アルファベット混合
    assert_equal '#800f08', to_hex(128, 15, 8)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255,255,255], to_ints('#ffffff')
    assert_equal [128, 15, 8], to_ints('#800f08')
  end
end

