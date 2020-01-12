## 1. Factorial Method
def sum_upto(n)
  return 1 if n == 1
  return sum_upto(n - 1) + n 
end

## 2. Palindrome test
def palindrome_test(str)
  
end

## 2. 99 bottles
def bottles(n)
  return "No more bottles of beer on the wall" if n.zero?
  puts "#{n} bottles of beer on the wall..."
  bottles(n - 1)
end