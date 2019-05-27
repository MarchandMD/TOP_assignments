I'm verbose....

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

The bubble_sort method takes a single argument/parameter in the form of an array. 

The first variable in the method is 'answer', which is set to an empty array. When performing a bubble sort the largest value will  be pushed to the right-most position in it's containing array after one complete iteration. Array#pop will push that value to the answer array. 

the second variable is i = 1. Originally 'i' was believed to be an iterator; However, when it's purpose was identified as a helper with indexing/accessing elements within the containing array, downstream logic was easier to grasp. (Anecdotally, this variably caused a delay in solving this challenge. More later).

After those two variables are assigned, the logic begins. 

Originally, the logic to evaluate an array of length 2 was used to prototype the solution. If I can create logic to conditionally test for element[0] being greater than (>) element[1] then I'd know when I'd need to swap places. 

Array offers #slice, #slice!, #insert, and using two of these methods, adjacent elements are able to be swapped "in place".

But I've gotten ahead of myself. The first while loop was while i <= arr.length - 1. But I didn't understand why arr.length -1 needed to be used. I think I was using it based on "faith" and a piece of a fragmented memory from watching the Harvard CS50 video regarding bubble sort. 

i less than or equal to arr.length - 1 is the logic for the inner while loop. And it means "while the index value is less than or equal to the length of the array minus 1, keep executing the code within the while loop". This logic ensures that the program will be able to step through the array and compare two of it's values, only until it doesn't have 2 values to compare. And this is why arr.length - 1 is used as the logic for the inner while loop. 

Of course, to be able to step through the array, the while loop will have to progress through the array. So one of the two variables within the while loop conditional statement will need to change. By incrementing i, the while loop is creating a new condition for itself to test, and avoiding an infinite loop since the other variable within the conditional statement (arr.length -1) is a static value. 

Inside the while loop is an if-else statement, but really it's just an if statement, because that's all that matters in this scenario. If element[0] is greater than element[1] than the elements are out of order, and must be swapped, otherwise, I don't care. If they aren't out of order (that is, if element[0] is less than (<) element[1]) than doing do anything....

Though that's not entirely true. if element[0] is less than element[1] then the if statement is no longer needed, so it ends, and the while loop should increment the index variable. 

While loop will repeat until the index variable is equal to arr.length minus 1. 

in effect, this will iterate over the array passed in as a parameter with the final value being the largest value. After the while loop is finished iterating over the array, ruby has exited the while loop and I can now #pop the final value off the array parameter and onto the "answer" array. 

Great, but now what?


Welp, I need to pass through the array again (which is now one element shorter than it was when we started), and again, and again... until the arr.length is 0. 

The last statement in the paragraph above is actually a piece of conditional pseudocode...and can be wrapped around the code for performing a single pass through the array. 

But if Until arr.length == 0 is used...it implies arr.length will be somehow altered within the until loop. So write 'end' for the until loop, and then directly above the 'end' statement, write the piece of code that will increment or decrement the condition used with the until loop. Using the Array#pop method does that for me, since Array#pop is a destructive method. 

