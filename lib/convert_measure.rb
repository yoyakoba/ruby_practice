def convert_measure(length, unit_from, unit_to)
  units = {
    'm'  => 1.00,
    'ft' => 3.28,
    'in' => 39.37,
  }
  
  # 小数点2位で四捨五入
  (length / units[unit_from] * units[unit_to]).round(2)
end
