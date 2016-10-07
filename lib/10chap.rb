# 10.1: accept the root node of a tree and determine if the tree is a balanced binary tree

def check_balance(root)
  is_balanced?(root)[:balanced]
end

def is_balanced?(root)
  return { depth: -1, balanced: true } unless root

  left = is_balanced?(root.left)
  right = is_balanced?(root.right)

  if(left[:balanced] && right[:balanced] && (left[:depth] - right[:depth]).abs <= 1)
    return {balanced: true, depth: [left[:depth], right[:depth]].max + 1}
  end

  {balanced: false, depth: 0}
end

# 10.4: Given 2 nodes in a tree, find their closest ancestor (nodes have parent pointers)

def least_common_ancestor(node1, node2)
  parents_1 = Hash.new(false)
  
  depth1 = get_depth(node1)
  depth2 = get_depth(node2)

  if(depth2 > depth1)
    node1, node2 = node2, node1
  end
  
  i = 0 
  while i < (depth1 - depth2).abs 
   i += 1
   node1 = node1.parent
  end

  while node1
    return node1 if node1 == node2
    node1 = node1.parent 
    node2 = node2.parent
  end

  nil 
end

def get_depth(node)
  depth = 0
  
  while node.parent
    depth += 1 
    node = node.parent
  end
  depth 
end
