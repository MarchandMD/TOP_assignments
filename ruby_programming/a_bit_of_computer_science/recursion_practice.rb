# Write a function that takes an integer and returns a string with the given number of "a"s in Edabit.
def how_many_times(n)
  # base_case
  # Think about the call stack while building this base case and recursive case
  str = 'Edbit'
  str = str.insert(2, 'a' * n)
  return str if n == 0
  #recursion_case
  how_many_times(n - 1)
end