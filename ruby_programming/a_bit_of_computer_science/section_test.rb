## 1. Factorial Method
def sum_upto(n)
  return 1 if n == 1
  return sum_upto(n - 1) + n 
end

## 2. Palindrome test
def palindrome_check(str)
  return false if str[0] != str[-1] || str.length == 0 && str[0] != str[-1]
  return true if str.length <= 2 && str[0] == str[-1]
  str.slice!(0)
  str.slice!(-1)
  palindrome_check(str)
end

## 3. 99 bottles
def bottles(n)
  return "No more bottles of beer on the wall" if n.zero?
  puts "#{n} bottles of beer on the wall..."
  bottles(n - 1)
end

## 4. Fibonacci sequence
def fib_element(n)
  # Return the value of the Fibonacci sequence @ index n
end