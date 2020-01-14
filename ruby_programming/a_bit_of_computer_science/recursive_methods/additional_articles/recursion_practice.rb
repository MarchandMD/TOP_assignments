def recursive(arr)
  return "#{arr[0]} " if arr.length < 2
  return print_elements(arr.slice(0, arr.length))
end
#  I don't really know what this mehtod does...but it does something recursively...