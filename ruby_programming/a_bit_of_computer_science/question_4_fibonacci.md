# Question 4: Fibonacci

>Define a recursive function that takes an argument n and returns the fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.

So, again..I'm building a method. And it will need to reference itself. 

And it will be working on the input. 

And this is how I've been approaching all the methods that I write...typically the methods I write are written with a parameter...that is they accept some sort of input, and the methods work on that input to create some output.

The input will be an integer. And that makes me confident. I'm able to work well with numbers. 

So then, what am I doing with the integer? 

>...retunrs the fibonacci value of that position...

Um...ok...so hold on. 

the idea is that...i'm passing an integer...and that integer is referencing the index position of an Array holding the Fibonnaci sequence. 

Now this assumes that there is already an Array with the Fibonacci sequence. So, just to make sure I understand the practice well enough, why don't I try to hard code the method...

```ruby
fib_arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55...]
fib_arr[5]
#=> 5

fib_arr[6]
#=> 8

# etc
```

So yeah..I think I understand fairly well how the method is intended to function. 

