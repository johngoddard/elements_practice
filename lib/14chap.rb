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
