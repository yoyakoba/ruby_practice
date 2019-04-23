# RGB 10進数から16進数へ変換する
def to_hex(r, g, b)
  [r, g, b].inject('#') { |hex, n|
    # 16進数に変換した上で文字列連結
    # injectを利用することで#を先頭に付与できる
    # 文字列連結は+より<<の方が高速
    hex << n.to_s(16).rjust(2, '0')
  }
end

# RGB 16進数から10進数へ変換する
def to_ints(str_hex)
  # 2文字ずつ切り出して10進数へ
  # &を使う場合は{} でなく ()
  str_hex.scan(/\w\w/).map( &:hex )
end

