## 1. Factorial Method
def sum_upto(n)
  return 1 if n == 1
  return sum_upto(n - 1) + n 
end

## 2. 99 bottles
def bottles(n)
  return "no bottles of beer on the wall" if n < 1
  return "#{n} bottle of beer on the wall, #{n} bottle of beer.." if n == 1
  return "#{n} bottles of beer on the wall, #{n} bottles of beer.." if n >= 2
end