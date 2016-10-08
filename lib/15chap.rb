# 15.1: accept a root node and return whether a tree is a bst

def is_bst?(root, min = -Float::INFINITY, max = Float::INFINITY)
  return true unless root
  return false if root.val > max || root.val < min

  left = is_bst?(root.left, min, root.val)
  right = is_bst?(root.right, root.val, max)
  
  left && right
end

# 15.2: Accept the root of a BST and value. Return the first value in the tree greater than the given value

def first_greater_value(node, target, curr_greater = nil)
  return curr_greater unless node
  
  if node.val <= target
    first_greater_value(node.right, target, curr_greater)
  else
    if curr_greater.nil? || node.val - target < curr_greater - target
      curr_greater = node.val
    end

    first_greater_value(node.left, target, curr_greater)
  end
end
