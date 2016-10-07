def binary_search(arr, target)
  lower = 0
  upper = arr.length - 1

  while lower <= upper
    mid = lower + (upper - lower) / 2
    case target <=> arr[mid]
    when -1 
      upper = mid -1 
    when 0
      return mid
    when 1
      lower = mid + 1
    end 
  end

  nil
end

#12.1 naive

def first_occurence(arr, target)
  idx = binary_search(arr, target)
  return nil unless idx 
  
  while idx > 0 && arr[idx - 1] == target
    idx -= 1
  end

  idx
end

#12.1 optimal

def first_occurence2(arr, target)
  lower = 0
  upper = arr.length - 1
  result = nil

  while lower <= upper
    mid = lower + (upper - lower) / 2
    case target <=> arr[mid]
    when -1 
      upper = mid -1 
    when 0
      result = mid
      upper = mid - 1
    when 1
      lower = mid + 1
    end 
  end

  result 
end

def closest_root(num, candidates = nil)
  return num if num == 1
  candidates ||= (0..num/2).to_a
  upper = candidates.length
  lower = 0

  while lower <= upper
    mid = lower + (upper - lower) / 2
  if candidates[mid] * candidates[mid] <= num && 
      (mid + 1 > candidates.length - 1 || candidates[mid+1] * candidates[mid+1] > num)
      return candidates[mid]
    elsif candidates[mid] * candidates[mid] > num
      upper = mid - 1
    else 
     lower = mid + 1
    end 
  end

  nil
end

def kth_largest_in_place(arr, k, start=0, len = arr.length)
  return nil if len < 1

  rand_idx = start + rand(len) 
  arr[rand_idx], arr[start] = arr[start], arr[rand_idx]
  
  partition = start
  
  (start+1...start+len).each do |idx|
    if arr[idx] < arr[partition]
      arr[partition + 1], arr[idx] = arr[idx], arr[partition + 1]
      arr[partition], arr[partition + 1] = arr[partition + 1], arr[partition]
      partition += 1
    end
  end
  
  temp_k = arr.length - partition

  return arr[partition] if temp_k == k 
  
  if temp_k < k
    kth_largest_in_place(arr, k, start, partition - start)
  else
    kth_largest_in_place(arr, k, partition + 1, len - (partition - start + 1))
  end 

end
