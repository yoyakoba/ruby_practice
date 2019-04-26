require 'minitest/autorun'
require './lib/convert_measure'

class ConvertMeasureTest < Minitest::Test
  def test_convert_measure
    assert_equal 39.37, convert_measure(1, unit_from: :m, unit_to: :in)
    assert_equal 3.28,  convert_measure(1, unit_from: :m, unit_to: :ft)
    assert_equal 0.30,  convert_measure(1, unit_from: :ft, unit_to: :m)
    assert_equal 0.51,  convert_measure(20, unit_from: :in, unit_to: :m)

    # 引数が足りない場合はエラー
    # (例外のテストってやるのだろうか……？)
    assert_raises(ArgumentError) do convert_measure(100) end
    assert_raises(ArgumentError) do convert_measure(100, unit_from: :in) end
    assert_raises(ArgumentError) do convert_measure(100, unit_to: :in) end

    # 存在しないキーを指定した場合はエラー
    assert_raises(TypeError) do convert_measure(100, unit_from: :yd, unit_to: :in) end
  end
end

