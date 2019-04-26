# メートル換算した際の値
# 変動がないため定数にする
UNITS = {
  :m  => 1.00,
  :ft => 3.28,
  :in => 39.37,
}

def convert_measure(length, unit_from:, unit_to:)
  # 小数点2位で四捨五入
  # キーワード引数はシンボルではないので :unit_from のようには記述しない
  (length / UNITS[unit_from] * UNITS[unit_to]).round(2)
end
