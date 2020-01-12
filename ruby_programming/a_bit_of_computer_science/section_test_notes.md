# Section test notes
## `palindrome_test`
I mean...when I see a method is meant to return either `true` or `false`...my instinct is to turn it into a method with a `?` in it..so something like: 

`#palindrome?`

And these types of methods have a name...PREDICATE METHODS! 

Nice. I remember these were named in that TicTacToe tutorial. 

Hmm, so how do I develop a recursive method that determines if a string is a palindrome? 

I mean, what would the base case be? The base case would be....

The base case would be...well...I don't want to charge forward and make any old base case...because I want to be thinking about the recursive case as well...

So what would be the recursive case to get to? 

Well, I think that maybe...something I could do...would be to iterate through the string....and then somehow make that recursive. Because I did read that recursion is similar to an iterator...and anything I can do with iteration, I can do with recursion. 

So think about that.

I mean...

I usually like to think about methods in terms of the parameter they're working with...instead of the entire method itself....

so I'm thinking about a string. 

If i ahve a string...how do I know....separate from a computer program....if a word is a palindrome? By looking at the letters that compose the word...and identifying if they are the same backwards as they are forwards. 

so what am I doing...beneath the surface? What does my own call stack look like? 

I'm comparing the first letter with the last letter. If they are the same, then I continue. 
Compare the second letter with the second to last letter. If they are the same, then I continue. 
Compare the third letter with the third to last letter. If they are the same, then I continue. 
compare the fourth letter....if it is the same as the fourth to last letter......OR....

Here's a situation for me to consider. The length of the word. Because a word like: 

**kayak**

has 5 characters, and is a palindrome...but a word like: 

**boob**

has 4 characterss. 

so I want to compare their behaviors when I start looking at things....

So...it actually works out perfectly....

str[0] of **kayak**  
is str[-1]: "K"

str[1] of **kayak**  
is str[-2]: "A"

str[2] of **kayak**  
is str[-3]: "Y"

And so this unique situation continues for two more iterations: 

str[3] of **kayak**  
is str[-4]: "A"  

str[4] of **kayak**  
is str[-5]: "K"  

And at this point, there are no more letters to compare, so the answer is true. 

Now...I see something that is incrementing...

So, in a different article I read...the construction of a recursive method included 3 parts: 

1. The base case
2. The catch
3. The recursive case

the catch is the new piece to me....And it seems important. Because what it does is prevents infinite recrusion. 

So it gets me in the habit of writing a complete method prior to the introduction of recursion. But that still doesn't do the heavy lifting of thiking what a base case is...or should be. 

But the base case should be this minimal situation...this driving point. This destination. so, a situation in which to return `true` in this method. 

So what is the "general" base case look like? 

```ruby
return true if n == 1
```

So this is at it's most general. 

Now, I'm not working in a situation where the parameter is an interger. So I'm working with a `String` object...

```ruby
return true if str == 1
```

Now, this doesn't work, because a `String` isn't an integer...so I need to think about the condition. 

And simply saying `str.reverse` is a little too easy....because I don't know how I'd turn that into recursion. 

Now, instead of continuing to figure out how to add some logic to a string....it's easier to use logic with numbers/Integers...so I'm going to try to maintain my use of logic to numbers. 

So, if I look at say....the different elements of a `String`, i know taht I can begin to rely on numbers/integers again...

```ruby
return true if str[0] == 1
```

Well, this still doesn't make sense...since I know that a string, while it may contain numbers...won't be an actual `Integer`...because the number will be in quotes. And just converting it to an integer would not be helpful.  

so maybe saying something like: 

```ruby
return true if str[0] == str[!str.length]
```

So, what I'm trying to do here, is say that the first letter of the word is the same as the last letter of the word...IN REVERSE...

what I'm attempting to get is `!str.length`...and i'm **intending** for this to give me the length of the `String` with a negative sign in front of it...but i'm not sure if this is a permissible way to go about gettin that value. 

But this is a small enough piece of Ruby code, that I feel comfortable surfing over to IRB or PRY and giving it a try...

well, this didn't work:

```
str = "kayak"
!str.length
=> false
```

but this DID work: 

```
str = "kayak"
-(str.length)
=> -5
```

so then, I want to amend my "base case" from above to be something similar...

```ruby
return true if str[0] == str[-(str.length)]
```

but why won't this work? 

Because all this is doing is telling me that the first letter is the same as the first letter. So this base case will cause this method to always return true. 

so the...what is my logic? What am I really attempting to look at? 

well, I want to go back a couple steps...

And I want to look at when I began to use numbers...because using numbers for logic is a little easier...

I started using numbers here: 

```ruby
str[0]
```

This is when I began to use numbers. 

Now, for a `String` to be a palindrome...I'm looking at more than just the first letter. 

I'm looking at: 

```ruby
str[0] && str[1] && str[2] && ..str[n]
```

where `n == str.length - 1`

and I'm comparing each of these to: 

```ruby
str[-1] && str[-2] && str[-3] && ..str[-(str.length)]