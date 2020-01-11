## 1. Factorial Method
def sum_upto(n)
  return 1 if n == 1
  return sum_upto(n - 1) + n 
end

## 2. 99 bottles
def bottles(n)
  puts "#{n} bottles of beer on the wall..."
  return n < 1 ? "No more bottles of beer on the wall" if n < 1
  return bottles(n - 1)
end