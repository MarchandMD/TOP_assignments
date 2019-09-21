dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(str, array2)
  answer = Hash.new

  # if array.include?(str)
  #     answer[str] = 1
  #     answer
  # end
  array1 = str.split(/\W/)
  array1.reject! { |x| x.to_s.empty? }

  j = 0
  while j < array1.length
    i = 0
    while i < array2.length
      if array1[j].downcase.include?(array2[i])
        if !answer[array2[i]]
          answer[array2[i]] = 1
        else
          answer[array2[i]] += 1
        end
      end
      i += 1
    end
    j += 1
  end

  answer
  #array1
end

# puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
