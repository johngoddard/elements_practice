class TreeNode
  attr_accessor :val, :left, :right, :parent

  def initialize(val, parent = nil, left=nil, right=nil)
    @val = val
    @parent = parent
    @left = left
    @right = right
  end
end
