def to_hex(r, g, b)
  [r, g, b].inject('#') { |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  }
end

def to_ints(str_hex)
  str_hex.scan(/\w\w/).map( &:hex )
end
