# Write a function that accepts an array of tasks and assigns them to workers in an optimal way. 
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
