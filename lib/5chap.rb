# 5.8 reversed_int: take an integer, and reverse the digits
# 1234 => 4321

def reversed_int(num)
  negative = num < 0 ? true : false
  num = -num if negative

  res = 0
  
  while num > 0
    res *= 10
    res += num % 10
    num /= 10
  end
  
  negative ? -res : res
end
