require_relative '../util/heap.rb'

#11.1: Accept multiple sorted arrays and return a sorted array of all of their elements

def sorted_arr_sort(*arrs)
  h = Heap.new {|a, b| a[:val] <=> b[:val]}
  count = 0
  res = [] 

  arrs.each_with_index do |arr, idx|
    count += arr.length
    h.insert({val: arr.shift, idx: idx}) unless arr.empty?
  end
  
  until res.length == count 
    min_left = h.remove
    res << min_left[:val]
    h.insert({ val: arrs[min_left[:idx]].shift, idx: min_left[:idx] }) if arrs[min_left[:idx]].length > 0
  end 

  res
end

#11.4: Return the kth largest number in an array

def kth_largest(arr, k)
  curr = 0
  h = Heap.new

  k.times do 
    h.insert(arr[curr])
    curr += 1
  end

  while curr < arr.length 
    if arr[curr] > h.peek
      h.remove
      h.insert(arr[curr])
    end

    curr += 1
  end

  h.remove
end
