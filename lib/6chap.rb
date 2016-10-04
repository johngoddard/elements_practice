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

# p dutch_flag([6,3,3,4,2,1,2,2,3,8,7,6,5,3], 1)


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

p stock_picker([13,7,12,8, 13])
p stock_picker([13,7,12,5, 13])

def random_subset(arr, num)
  raise 'hell' unless num <= arr.length

  (0...num).each do |i| 
    random_idx = i + rand(arr.length - i)
    arr[i], arr[random_idx] = arr[random_idx], arr[i]
  end

  arr[0...num]
end
