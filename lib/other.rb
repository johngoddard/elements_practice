require 'byebug'

def kpm_string_search(string, key)
  jump_array = process_prefix(key) 
  curr_idx = 0
  key_idx = 0
  
  while curr_idx < string.length
    return curr_idx - key_idx if string[curr_idx] == key[key_idx] && key_idx == key.length - 1
    
    if string[curr_idx] == key[key_idx]
      curr_idx += 1 
      key_idx += 1
    else
      key_idx = jump_array[key_idx - 1] unless key_idx == 0
      curr_idx += 1 unless string[curr_idx] == key[key_idx]
    end
  end  
  
  nil
end

def process_prefix(string)
  jump_array = [0]
  start = 0
  curr_idx = 1
  
  while curr_idx < string.length
    if string[curr_idx] == string[start]
     jump_array << start + 1
     start += 1
    else
      while string[start] != string[curr_idx] && start > 0
        start = jump_array[start - 1]
      end
      
      if string[start] == string[curr_idx]
        jump_array << start + 1
      else
        jump_array << 0
      end
    end

    curr_idx += 1
  end

  jump_array
end

