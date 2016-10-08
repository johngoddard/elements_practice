# 14.1: find the intersection of 2 sorted arrays

def intersection (arr1, arr2)
  pos1 = 0
  pos2 = 0
  
  res =[]

  while pos1 < arr1.length && pos2 < arr2.length
    case arr1[pos1] <=> arr2[pos2]
    when -1 
      pos1 += 1
    when 0
      val = arr1[pos1]
      res << val
      
      pos1 += 1 until pos1 == arr1.length || arr1[pos1] > val
      pos2 += 1 until pos2 == arr2.length || arr2[pos2] > val
    when 1
      pos2 += 1
    end
  end
  
  res
end

# 14.2: Merge sorted arrays. Assume that the first array is big enough to fit all elements of the first.
# Don't create a new array 

def merge_sorted(a, b)
  idx1 = 0
  idx1 += 1 until a[idx1 + 1].nil?
  idx2 = b.length - 1
  
  curr_idx = a.length - 1 - (a.length - (idx1 + idx2 + 2))
  
  while curr_idx >= 0
    if idx1 < 0 || (b[idx2] > a[idx1] && idx2 >= 0)
      a[curr_idx] = b[idx2]
      idx2 -= 1
    else
      a[curr_idx] = a[idx1]
      idx1 -= 1
    end

    curr_idx -= 1
  end
  a
end
