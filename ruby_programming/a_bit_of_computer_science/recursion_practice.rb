# Write a function that takes an integer and returns a string with the given number of "a"s in Edabit.
def how_many_times(n)
  # base_case
  # Think about the call stack while building this base case and recursive case
  str = "Edbit"
  str = str.insert(2, "a" * n)
  return str if n == 0
  #recursion_case
  how_many_times(n - 1)
end

# Write a recursive function that prints every element from an Array
def rec_arr(arr)
  return arr if arr.length == 1
  rec_arr(arr.slice!(0, arr.length - 1)) << arr[arr.length - 1]
end

def rec_pal(str)
  forwards = str
  backwards = str.reverse
end

def reduction(str)
  last = str.slice!(-1)
  first = str.slice!(0)
  last == first ? true : false
end

def palindrome_check(str)
  return false if str[0] != str[-1] || str.length == 0 && str[0] != str[-1]
  return true if str.length <= 2 && str[0] == str[-1]
  str.slice!(0)
  str.slice!(-1)
  palindrome_check(str)
end

# return false if str.length == 0 && str[0] != str[-1]
# return true if str.length == 1 && str[0] == str[-1]