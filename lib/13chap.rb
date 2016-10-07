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
  letter_words = letter.split(" ")
  letter_chars = {} 
  
  letter_words.each do |w|
    w.chars.each do |ch| 
     letter_chars[ch] = 0 unless letter_chars[ch]
     letter_chars[ch] += 1
    end
  end
  
  mag.split(" ").each do |w|
    w.chars.each do |ch|
      letter_chars[ch] -= 1 if letter_chars[ch]
      if letter_chars[ch] == 0
        letter_chars.delete(ch)
        return true if letter_chars.empty? 
      end
    end
  end

  false
end

def closest_repeat(string)
  min_dist = nil
  closest_repeated_word = nil 
  most_recent = {}
  pair_indices = nil
  
  string.split(" ").each_with_index do |word, i|
    if most_recent[word]
      last_instance = most_recent[word]
      test_dist = i - last_instance

      if min_dist.nil? || test_dist < min_dist
        closest_repeated_word = word
        min_dist = test_dist
        pair_indices = [last_instance, i]
      end
    end
    
    most_recent[word] = i  
  end
  

  [closest_repeated_word, pair_indices]
end
