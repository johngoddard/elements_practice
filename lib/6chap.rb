# 6.1: Accept an array of ints and an index. Return an array with 3 sections: all the numbers
# less than the number at the index, all numbers equal to the number at the index, and then all 
# greater than the pivot

def dutch_flag(arr, idx)
  arr[idx], arr[0] = arr[0], arr[idx]
  pivot = arr.first
  first_pivot = 0
  last_pivot = 0 
  
  (1...arr.length).each do |i|
    if arr[i] <= pivot
      arr[last_pivot + 1], arr[i] = arr[i], arr[last_pivot + 1]
      
      if arr[last_pivot + 1] < pivot
        arr[last_pivot + 1], arr[first_pivot] = arr[first_pivot], arr[last_pivot + 1]
        first_pivot += 1
      end

      last_pivot += 1
    end
  end
  
  arr
end

# 6.6: Accept an array of stock prices. Pick the pair of the days where you could buy then sell 
# and make the largest profit

def stock_picker(arr)
  return 0 unless arr.length > 1 
  curr_min = arr.first
  curr_min_idx = 0 
  biggest_diff = 0
  biggest_diff_days = [nil, nil]

  (1...arr.length).each do |i|
    if arr[i] < curr_min 
     curr_min = arr[i]
     curr_min_idx = i
     next
    elsif arr[i] - curr_min > biggest_diff
      biggest_diff = arr[i] - curr_min 
      biggest_diff_days = [curr_min_idx, i]
    end
      
  end
  
  biggest_diff_days
end

# 6.11 Accept an array and return a random subset from that array of length n

def random_subset(arr, num)
  raise 'hell' unless num <= arr.length

  (0...num).each do |i| 
    random_idx = i + rand(arr.length - i)
    arr[i], arr[random_idx] = arr[random_idx], arr[i]
  end

  arr[0...num]
end

# 6.17: Accept a 2-D array and return a 1-D array with the numbers in spiral ordering

def spiral_ordering(arr)
  min_col = 0
  max_col = arr[0].length - 1 
  min_row = 0
  max_row = arr.length - 1 
  
  operations = [:min_row, :max_col, :max_row, :min_col]
  count = 0
  res = []

  until(res.length == arr[0].length * arr.length)

    case(operations[count % 4])
    when :min_row 
     arr[min_row].each_with_index do |el, idx|
       res << el if idx >= min_col && idx <= max_col
     end
     min_row += 1
    when :max_col   
      (min_row..max_row).each do |i|
        res << arr[i][max_col]
      end
      max_col -= 1
    when :max_row
      (max_col).downto(min_col).each do |i|
        res << arr[max_row][i]
      end
      max_row -= 1
    when :min_col
      max_row.downto(min_row).each do |i|
        res << arr[i][min_col]
      end
      min_col += 1
    end
    
    count += 1
  end

  res
end

