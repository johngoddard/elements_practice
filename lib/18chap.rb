# 18.1:  Write a function that accepts an array of tasks and assigns them to workers in an optimal way. 
# Assume there are N workers and 2N tasks. 
#
# E.g. [5,2,1,6,4,4] => [[1,6], [2,5], [4,4]], since 4+4 = 88 s the lowest possible max time for a
# single worker


def assign_tasks(tasks)
  res = []
  sorted = tasks.sort
  
  until sorted.empty?
    res << [sorted.shift, sorted.pop]
  end
  
  res
end

# 18.4 -- three sum: Accept an array and a target value. Return true if any 3 numbers in the array
# add up to the target. You can use the same number more than once

def three_sum(arr, target)
  arr.each_with_index do |el, i|
    return true if two_sum(arr, target, i)
  end

  false
end

def two_sum(arr, target, idx)
  els = Set.new
  arr.each_with_index{|el, i| els << el }
  target = target - arr[idx]
  
  arr.each_with_index do |el, i|
    return true if els.include?(target - el)
  end

  false
end
