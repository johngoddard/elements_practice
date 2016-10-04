
def int_to_string(num)
  digits = []
  is_negative = num < 0

  num = -num if is_negative

  while num > 0
    digits << num % 10 
    num /= 10
  end
  
  res = ''

  digits.each do |digit|
    res = ('0'.ord + digit).chr + res
  end
  is_negative ? "-#{res}" : res
end

puts int_to_string(123)
puts int_to_string(-123)

def string_to_int(str)
  res = 0
  is_neg = false
  
  if str[0] == '-'
    is_neg = true
    str = str[1..-1]
  end

  str.chars.each_with_index do |ch, i|
    res += (10 ** (str.length - i - 1)) * (ch.ord - '0'.ord)
  end

  is_neg ? -res : res
end


puts string_to_int('123')
puts string_to_int('-123')
