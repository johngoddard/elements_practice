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

def first_occurence(arr, target)
  idx = binary_search(arr, target)
  return nil unless idx 
  
  while idx > 0 && arr[idx - 1] == target
    idx -= 1
  end

  idx
end
