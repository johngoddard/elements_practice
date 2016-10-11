# 5.8 reversed_int: take an integer, and reverse the digits
# 1234 => 4321

def reversed_int(num)
  negative = num < 0 ? true : false
  str_num = num.to_s
  res = ''
  
  (str_num.length - 1).downto(0).each do |i|
    res << str_num[i] unless str_num[i] == '-'
  end

  negative ? -res.to_i : res.to_i
end
