def bubble_sort arr
    answer = []
    i = 1
    
    until arr.length == 0
        while i <= arr.length - 1
            if arr[i - 1] > arr[i]
                #swap places
               el = arr.slice!(i - 1)
               arr.insert(i, el) 
            end
            i += 1
        end
     answer << arr.pop
     i = 1
    end
    p answer.reverse
end

bubble_sort [4,3,78,2,0,2]

def bubble_sort_by arr
    answer = []
    i = 1
    
    until arr.length == 0
        while i <= arr.size - 1
            if yield(arr[i-1], arr[i]) >= 1
                #swap places
               el = arr.slice!(i - 1)
               arr.insert(i, el) 
            end
            i += 1
        end
     answer << arr.pop
     i = 1
    end
    p answer.reverse
end

bubble_sort_by(["hallelujah", "hi", "hello", "hey", "hair"]) do |left, right|
    left.length - right.length
end
