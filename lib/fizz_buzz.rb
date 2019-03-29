def fizz_buzz(num)
  if num !~ /^[0-9]+$/
    return "整数を入力してください"
  end

  num = num.to_i

  if num.modulo(15) == 0
    "FizzBuzz"
  elsif num.modulo(3) == 0
    "Fizz"
  elsif num.modulo(5) == 0
    "Buzz"
  else
    num
  end

end

# ruby lib/fizz_buzz.rb 引数
# で実行してください
puts fizz_buzz(ARGV[0])

