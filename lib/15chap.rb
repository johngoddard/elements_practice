def is_bst?(root, min = -Float::INFINITY, max = Float::INFINITY)
  return true unless root
  return false if root.val > max || root.val < min

  left = is_bst?(root.left, min, root.val)
  right = is_bst?(root.right, root.val, max)
  
  left && right
end
