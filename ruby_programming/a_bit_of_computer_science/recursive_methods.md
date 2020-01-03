# Ruby Programming > A Bit of Computer Science > 2. Recursive Methods

Learning outcomes: 
* Why is recursion a useful technique for solving a big problem?
* What are the limitations of using recursive solutions?
* What types of problems are more suited for simple loops than recursion?
* What is meant by “recursive depth?”
* What is a “stack overflow” (the concept, not the website)?
* Why is that relevant to a recursive problem?
* What is a factorial? 

And then there are also assignments; 3 to be exact. 

1. Recursion chapter in Bastards Book of Ruby by Dan Nguyen
2. a Video to watch (long-ish)
3. "Implementation Issues"

And then there is a test from Code quiz; which seems like a very janky website...but that's besides the point. The point is, there are questions on the website that i should review. 

This is essentially akin to looking at the "chapter review" questions from a text book, and knowing what to look for in my review of the chapter. 

So, I'm going to want to add to the "Learning Outcomes" above.

#### Questions from the Test: 

1. Define a recursive function that finds the factorial of a number
   
2. Define a recursive function that returns true if a string is a palindrome and false otherwise
   
3. Define a recursive function that takes an argument n and prints "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", ..."no more bottles of beer on the wall"
   
4. Define a recursive function that takes an argument n and returns the fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.
   
5. Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4]
   
6. Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.

```ruby
roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
```
7. Use the roman_mapping hash to define a recursive method that converts a Roman numeral to an integer.

```ruby
roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}
```

#### About the test: 

So, the entire test is asking me to write recursive methods. So before I get to this test, I should have already had some practice writing recursive methods. So then what I want to know is...where in the other resources am I writing recursive methods? Like, where am I being shown how to write a recursive method? And what examples are being given to me? 

I feel like this is one of those lessons that'll require me to look at the additional resources as well, because i don't know how much or how many examples they'll be giving me. 

But I do recognize one of the problems as being a  problem from the "Learn to Program" book by Chris Pine. 

The roman numeral problems also look familiar....like they also come from that book...

### Answers to the Learning Outcomes
* What is a “stack overflow” (the concept, not the website)? Why is that relevant to a recursive problem?

<https://en.wikipedia.org/wiki/Stack_overflow>

* What is a factorial? 
  
1. <https://en.wikipedia.org/wiki/Factorial>  
2. <https://www.sitepoint.com/functional-programming-techniques-with-ruby-part-iii/>
3. [fibonnacci sequences](https://www.natashatherobot.com/recursion-factorials-fibonacci-ruby/)

Um, ok, what else? I mean...I feel like this article is more about getting me into the subject. And I am very tangentially getting into it. 

Because I feel like it might be quick...but I'm not sure. 

And I know there's a lot of other things I want to continue to do. 

I think this is one of those times...when I'm in between topics...that I sort of float a little bit. Adn I don't know that I really want to be floating. I want to be knee-deep in something. I want to be absorbed and consumed in a subject.

But that comes and goes. I mean, i feel proud of the Hangman game I created. And I realize I did create a "save" feature.....but really the point was to teach me about serialization. But it's one of those tools that if I don't find a way to use it more frequently, I don't know that I'll be comfortable with it. 

But look at it like this....if I want to, I'll find a way to do it. I mean, this is the point. i don't need to keep driving ahead. But I sort of want to. I mean, this is a familiar conversation I've had. 