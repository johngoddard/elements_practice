
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

# puts int_to_string(123)
# puts int_to_string(-123)

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



# 7.2 
def base_converter_2(str, b1, b2)
  num = convert_to_int(str, b1).to_s
  base10_converter(num, b2)
end

def convert_to_int(str, base)
  digits_map = {
    '0' => 0, 
    '1' => 1, 
    '2' => 2, 
    '3' => 3, 
    '4' => 4, 
    '5' => 5, 
    '6' => 6, 
    '7' => 7, 
    '8' => 8, 
    '9' => 9, 
    'a' => 10, 
    'b' => 11, 
    'c' => 12, 
    'd' => 13, 
    'e' => 14, 
    'f' => 15
  }
  int = 0
  
  str.chars.each_with_index do |ch, i|
    digit_val = digits_map[ch]
    place_val = base ** (str.length - 1 - i)
    int += digit_val * place_val
  end
  
  int
end

def base10_converter(str, base)
  digits = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  
  num = str.to_i 
  return '0' if num == 0 

  res = ''
  until num == 0
    digit = digits[num % base]
    res = digit + res 
    num /= base
  end
  
  res
end

# 7.4 replace and remove

def replace_and_remove(arr, len)
  write_idx = 0 
  count = 0
  p arr 
  (0...len).each do |i|
    if arr[i] == 'a'
      arr << 'd'
      count += 1
    end
    
    if (arr[i] != 'b')
      arr[write_idx] = arr[i]
      write_idx += 1
    end
  end

  read_idx = write_idx
  write_idx = write_idx + count  

  read_idx.downto(0).each do |idx|
    if(arr[idx] == 'a')
      arr[write_idx] = 'd'
      write_idx -= 1
      arr[write_idx] = 'd'
      write_idx -= 1
    else
      arr[write_idx] = arr[idx]
      write_idx -= 1
    end
  end

end
