# 7.1 Write a method that turns an int into a string, and another that turns a string into an int

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

# 7.2: Accept a string, and two bases. Convert the string from the first base to the second

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

# 7.4: Accept an array of characters. Replace every 'a' with 2 'd's, and remove every 'b'

def replace_and_remove(arr, len)
  write_idx = 0 
  count = 0

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


# 7.5 take in a string, return true if it's a palindrome. Ignore non letters

def is_palindrome?(string)
  cleaned = string.chars.select{|ch| ch.between?('a', 'z') || ch.between?("A", "Z") }.join('')
  
  left = 0
  right = cleaned.length - 1

  while left < right
    return false unless cleaned[left].downcase == cleaned[right].downcase
    left += 1
    right -= 1
  end

  true
end

# 7.6 accept a string, and reverse the words in the string

def reverse_words(sentence)
  sentence.split(' ').reverse.join(' ')
end

def reverse_words_manual(sentence)
  mid = sentence.length / 2
  idx = 0
  
  while idx <= mid
    sentence[idx], sentence[sentence.length - idx - 1] = sentence[sentence.length - idx - 1], sentence[idx]
    idx += 1
  end
  
  start = 0
  finish = 0
  
  while start < sentence.length 
    while sentence[finish] != ' ' && finish < sentence.length
      finish += 1
    end
    
    reverse_word(sentence, start, finish)
    finish += 1
    start = finish
    break if finish == sentence.length
  end
  
  sentence
end


def reverse_word(sentence, start, finish)
  left = start 
  right = finish - 1

  while left < right
    sentence[left], sentence[right] = sentence[right], sentence[left]
    left += 1
    right -= 1
  end
end
