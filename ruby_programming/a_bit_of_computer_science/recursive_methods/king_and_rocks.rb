collection = [4, 3, 23, 4, 7, 8, 77, 6, 5, 87, 38, 28, 14, 27, 6, 8, 46, 4, 33, 7, 35, 73, 25, 9, 6, 0, 5, 34, 24, 7, 33, 5, 23, 51, 73, 26]

# suppose I have an array of integers
# and I want to find, via recursion, the largest of that array

# first attempt
# def reme(arr)
#   i = 0
#   return arr[i] if arr.length == 1
#   if arr[i] > arr[i + 1] || arr[i] == arr[i + 1]
#     arr.slice[i + 1]
#   else
# end

# second attempt
# def reme(arr)
#   a = arr.pop
#   b = arr.pop
#   return arr[0] if arr.length == 1
#   if a > b
#     arr << a
#     reme(arr)
#   else
#     arr << b
#     reme(arr)
#   end
# end

# third attempt: focus on the base case
# def reme(arr)
#   n = 0
#   if arr.length == 1
#     arr[n]
#   else
#     a = arr[n]
#     b = arr[n + 1]
#     if a > b || a == b
#       arr.slice(b)
#     else
#       arr.slice(a)
#     end
#     reme(arr)
#   end
# end
# this resulted in a stack overflow. My First one! LOL
