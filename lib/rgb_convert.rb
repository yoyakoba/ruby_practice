def to_hex(r, g, b)
  [r, g, b].inject('#') { |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  }
end

def to_ints(str_hex)
  r = str_hex[1..2]
  g = str_hex[3..4]
  b = str_hex[5..6]
  [r, g, b].inject([]) { |ints, n|
    ints << n.hex
  }
end
