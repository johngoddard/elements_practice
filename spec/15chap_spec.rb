require_relative '../util/tree'
require '15chap'

describe '15.1 #is_bst?' do 
  it 'returns true for a binary search tree' do 
    a = TreeNode.new(10)
    b = TreeNode.new(5)
    c = TreeNode.new(15)
    d = TreeNode.new(3)
    e = TreeNode.new(7)
    f = TreeNode.new(17)
    
    a.left = b
    a.right = c
    b.left = d
    b.right = e
    c.right = f 

   expect(is_bst?(a)).to be(true)
  end

  it 'returns false for a tree that violates bst' do 
   a = TreeNode.new(10)
   b = TreeNode.new(5)
   c = TreeNode.new(15)
   d = TreeNode.new(3)
   e = TreeNode.new(7)
   f = TreeNode.new(13)
    
   a.left = b
   a.right = c
   b.left = d
   b.right = e
   c.right = f 

   expect(is_bst?(a)).to be(false)
  end

end
