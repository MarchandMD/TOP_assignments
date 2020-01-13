# Write a function that takes an integer and returns a string with the given number of "a"s in Edabit.
def how_many_times(n)
  # base_case
  return "Edbit" if n < 1
  #recursion_case
  how_many_times(n - 1)
end