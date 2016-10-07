# 9.2: Accept a string a in RPN calculator format, and return the resulting value

def eval_RPN(string)
  rpn_els = string.split(',')

  first = rpn_els.shift.to_i

  until rpn_els.empty?
    second = rpn_els.shift.to_i
    operator = rpn_els.shift
    
    case(operator)
    when '+'
      first = first + second
    when '-'
      first = first - second
    when '*'
      first = first * second
    when '/'
      first = first / second
    else
      return first
    end 
  end

  first
end

 
# 9.3: Accept a string containing '(', ')', '{', '}', ']', '[', and return whether the string is well formed. 
# A string is well formed if each open paren/bracket/brace has a close brace in a valid order: e.g. '{()[]}()

def is_well_formed?(string)
  left_parens = []
  right_matches = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  string.chars.each do |ch|
    if right_matches[ch]
      left_parens << ch
    elsif [')', ']', '}'].include?(ch)
      return false if left_parens.empty?
      left = left_parens.pop
      return false unless ch == right_matches[left]
    else
      raise 'invalid character'
    end
  end 

  true
end

# 9.7: Accept the root of a tree and return a nested array where each sub array contains all of the values from 
# a single level of the tree

def tree_levels(root)
 q = [root]
 res = []
 level_count = 1
 level_vals = []

 until q.empty? 
   node = q.shift
   level_count -= 1
   level_vals << node.val

   q << node.left if node.left
   q << node.right if node.right

   if level_count == 0
     level_count = q.length 
     res << level_vals
     level_vals = []
   end
 end 

 res
end

