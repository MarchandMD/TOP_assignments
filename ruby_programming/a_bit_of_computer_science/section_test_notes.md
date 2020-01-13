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
```

So...I cheated. And looked at the solution from the website. 

But I'm not sure I really understand the solution right now. but I do feel like I was going along the right path. But I feel like I still need to spend some more time with some other examples. 

So before parse this solution...I'll take a look for more recursion examples....

Recursion is such a strange thing....

So..here's the method I'm working on....

>Write a function that takes an integer and returns a string with the given number of "a"s in Edabit.

And I want to do this recursively. 

Now, I feel like there's a starting point i need to be at. 

And in the method, since I'm only calling the method, and passing in an integer, an integer is the only thing I have to work with. So there needs to be a `String` in the method already..for me to work on...

```ruby
def how_many_times(n)
  str = "Edabit"
```

Ok, so now that I have the necessary data in the method...I need to start doing things to it. 

I'll try to write this out the long way, and cover from the base case out...

So, the base case...
Um..well, this is strange. I need to re-think how I approach the data I have to work with. Because what do i ahve to work with? 

1. a `String` object stored in a variable
2. an `Integer` object

And how do I want these two things to interact? 

Well, I want the `String` object to reflect the same number of "a"s as denoted by the `Integer`. 

So what if the parameter is 0? 

Well, if the parameter is 0, then I want the method to return "Edbit"...which does what I want it to do. So that means it removes the letter "a"...when the parameter is 0. However, this doesn't seem to be a good base case. And why not? 

Because right now I don't have a base case written....so let me simply write the method to perform the task necesasry with the parameter I'm considering...

```ruby
def how_many_times(n)
  str = "Edabit"
  
  if n == 0
    str.slice!(2)
  end
  
  if n == 1
    str
  end
  
  if n == 2
    str.insert(2, 'a')
  end
  
  if n == 3
    str.insert(3, 'a')
  end
  
  if n == 4
    str.insert(4, 'a')
  end
  
  str
end
```


But this wouldn't explicitly work...

For example, in the scenario when `n == 4`...the result would be:

```ruby
"Edabait"
```

...so this would only work if...an "a" had been inserted at 2 and 3.

Now...if the `#count` of "a"s in `str` is equal to the parameter...return the string...otherwise....call the method...

So maybe something like: 

```ruby
def how_many_times(n)
  return 'Edbit' if n == 0
  return 'Edbit'.insert(2, 'a' * 1) if n == 1
  return how_many_times(1) if n == 2
  return 'Edbit'.insert(2, 'a' * 3) if n == 3
end
```

I need to writ eit out long form more...

I have neither a base case, nor do I have a recursive case here...because I don't know how to incrementally return more and more...up to a base case....

So i'm going to write it out long hand again: 

```ruby
def how_many_times(n)
  str = 'Edbit'
  return str if str.count(a) == n
  return str.insert(2, 'a' * 1) if n == 1 # how_many_times(1)
  return str.insert(2, 'a' * 2) if n == 2 # how_many_times(2)
  return str.insert(2, 'a' * 3) if n == 3 # how_many_times(3)
  return str.insert(2, 'a' * 4) if n == 4 # how_many_times(4)
  return str.insert(2, 'a' * 5) if n == 5 # how_many_times(5)
end
```

So I have this...but there is no recursive call. 

But I do have some integers in here...so I feel like, eventually I'll want to start replacing the integers with `n`...but not yet. 

First thing I want to do is sort of figure out the strength of my base case. And then I also want to think about finding a way to add a recursive case. 

I'm getting stumped because I'm thinking about the parameter now.

If the parameter is 2...how can I make a call to `#how_many_times(1)`...and then amend something to it? 

What would `#how_many_times(1)` return? Just..as a method itself? it would return `"Edabit"`...

So then, couldn't I: 

```ruby
str = how_many_times(n - 1) if n == 2
```

now..everytime `#how_many_times` is called...`str` is re-defined...

so I may want to re-arrange things...

```ruby
def how_many_times(n)
  str = 'Edbit'
  str = str.insert(2, 'a' * 0) if n == 0
  return str if str.count('a') == n
  str = str.insert(2, 'a' * 1) if n == 1
  str = how_many_times(n - 1) if n == 2
  str = how_many_times(n - 1) if n == 3
end
```

I don't know. 

So, here's what I need to do. 

Since I'm staring at this, and I want to do this...I need to start trying things, and holding things constant, and tweaking just one small thing at a time...instead of trying to think through the entire thing in one fell swoop....

So what I'm going to do is go ahead, and start over. And I'm going to begin to write things out long hand...and then I'm going to make as few chances as possible. But my mind does keep trying different things, and I don't want my mind to exhaust itself trying to get one thing right.

What I do want to do though...is experiment in a methodical way. Because I am doing something now. But I'm doing neither a base case nor am I doing a recursive case. 

So, I want to try somethings...because right now...all I'm doing...is trying to write the perfect method....as opposed to attempting things. 

And do I want to try to use RSpec to help? 

I mean, how do I start this? 

Take it one step at a time: 

```ruby
def how_many_times(n)
  puts "hello"
end
```

Ok, now I want to change it slightly. 

The method is supposed to, recursively, inject the letter 'a' into the word "Edabit"..so if the parameter is 0, return 'edbit' if it's 1, return 'Edabit'...and so on....

so, next thing I want to do is...make it say `Edbit'

```ruby
def how_many_times(n)
  return 'Edbit'
end
```

Ok, so now...I want to bring the parameter into the method...

```ruby
def how_many_times(n)
  str = 'Edbit'
  str.insert(2, 'a' * n)
end
```

Ok...so now..this method does what I'm asking it to do...like, flawlessly...

...so now...I want to figure out how to make it do the same thing...but recursively...

So, mayby this is the part where I need to create a sub-problem? 

Or...I need to take a step back....because the method works flawlessly now...and what I need to do is find a way to make it work less flawlessly.

So...is there I way that I can make it return the correct output..by using an iteration loop? 

I think that, perhaps the `#insert` is maybe making this too easy...so I'm going to remove that method, and it's parameters...

```ruby
def how_many_times(n)
  str = 'Edbit'
end
```

and now, I want to think about how to do iteration. 

I mean, I can use `#each`...but that's an Array method. And I currently don't have an Array. 

But since I've started in this direction...let's keep going. 

```ruby
def how_many_times(n)
  str = 'Edbit'
  str =  str.split('')
end
```

Now..I have an array. And I can use `#each`...

```ruby
def how_many_times(n)
  str = 'Edbit'
  str = str.split('')
  str.each do |x|
    x
  end
end
```

Ok...so as I was doing this...began to think about the base case. Like, instead of doing the 