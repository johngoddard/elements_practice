require 'byebug'

def palindrome_perm?(str)
  char_counts = Hash.new(0)
  str.chars.each{|ch| char_counts[ch] += 1}

  odd_counts = 0
  
  char_counts.each do |k, v|
    odd_counts += 1 if v % 2 == 1
  end

  odd_counts < 2 ? true : false
end

def is_constructable?(letter, mag)
  mag_words = mag.split(" ")
  mag_chars = Hash.new(0)
  
  mag_words.each do |w|
    w.chars.each{|ch| mag_chars[ch] += 1}
  end
  
  letter.split(" ").each do |w|
    w.chars.each do |ch|
      mag_chars[ch] -= 1
      return false if mag_chars[ch] < 0
    end
  end
  
  true
end
