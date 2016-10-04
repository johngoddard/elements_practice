#9.2

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

puts eval_RPN("3,4,+,2,*,1,+")
puts eval_RPN("1972")
puts eval_RPN("-641,6,/,28,/")
 
#9.3

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

puts is_well_formed?('([]){()}')
puts is_well_formed?('([)')
