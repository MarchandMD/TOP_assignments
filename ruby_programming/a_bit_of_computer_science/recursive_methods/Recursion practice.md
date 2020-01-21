# Recursion practice
Determine whether a string is a palindrome or not

So this one, I'm really unsure of how to approach it. 

I mean, when I was working with numbers...it seemed a little more obvious that what I needed to work with and focus on was the number. 

But this is a string. 

But how is a palindrome recognized in a method? 

So a palindrome is spelled the same forward as it is backwards. 

So what can I compare at smaller and smaller increments to determine if a word is the same forwards as backwards? 

Well, the first thing I need to do is I need to have a word forward, and the word back wards. 

So what if I just build this up the most verbose way possible? 

Ok, so now I have a word forwards and backwards.

Now, what if the string was empty? Or what if the string was only one or two characters long? 

## Review what did work
Ok, before I continue with working on the Palindrome identification, I want to review the method I wrote that does work...and see if I can tweak it a little to make it do different things. 

```ruby
def rec_arr arr
  return arr if arr.length == 1
  rec_arr(arr.slice!(0, arr.length - 1)) << arr[arr.length -1]
end
```

So I'm working with an arr. And if the arr.length == 1, simply return the array. This is also the base case. So the implication is an arr of length 100 will eventually "reduce" to being called in the `#rec_arr` method, as an array with only one element. 

So, the `#rec_arr` method will return the `arr` object, in the absolute (and eventual) situation when `arr.length == 1`. So now this condition must be an inevitability. And creating the inevitability is part of this recursive case. Not necessarily about all recrusive cases. But I must now write the recursive case....

And this invovles calling this method again. Like, that's a foundational tenet. But now...I need to pass the method a parameter that can work in a situation when the `arr.length != 1`.... and I also have the ability to write an entire Ruby expression to be returned; because Ruby will evaluate the entire expression, not just the method...

so then here's the next portion...the recursive portion...of the method...

```ruby
rec_arr(arr.slice!(0, arr.length - 1)) << arr[arr.length - 1]
```

So, there's a couple of things happening here: 

* the `#rec_arr` is being called
* the `#rec_arr` is receiving something different than the original `#rec_arr` parameter
* the recursive `#rec_arr` call is returning the `arr`, because that is the only non-recursive function of the method. 
* That returned `arr` is also then accepting, or receiving, or having shoveled onto the end of the returned single element `arr`...the `arr[arr.length - 1]`...so what is this? 

## `arr[arr.length - 1]`
So, at the time the recursive `#rec_arr` method is called, there is a parameter that has been passed into the original `#rec_arr` method...and that parameter has the value of `arr`. So Ruby is placing the performance or completion or execution of the original `#rec_arr` method (which includes the recursive `#rec_arr` call) to complete the recursive `#rec_arr` call. 

Assuming the recursive `#rec_arr` call returns the base case...Ruby will then return the base case....but she doesn't stop there. 

She returns the base case...but that return is the return of the "RECURSIVE CALLED `#REC_ARR` method....and that is "returned" more or less "INSIDE" the original `#rec_arr` method call. Well, Ruby isn't don't doing what I've instructed her to do.  

She will then shovel on `arr[arr.length - 1]`. Which is the parameter from the original `#rec_arr` call. In the event that it's a two element array...the shoveled element will be `arr.length - 1`....

...and if an `arr` is two elements long, then it's length is 2. So then doing `arr.length - 1` will be the second element...or the lats element.

Another thing I could do is `arr[-1]`. Which I think would have the same effect. 

But that's what will be shoveled on. What is being passed to the recursive call for `#rec_arr`? 

And that's going to be

```ruby
arr.slice!(0, arr.length - 1)
```

So what is this pulling from the original `arr` parameter? 

Well, it's `#slicing` destructively the parameter, because if I'm asking Ruby to open up a new method..I also want to give her some new information to take with her.  

So...maybe thinking about the method, and what I want it to do..and what I want to pass to it..and what's the new information I want to pass to it.

I mean, it's almost like the method and the parameter "decay" to a certain point...then something else happens when the decay has reached it's end. 

## back to the palindrome method

So then, what is obviously being passed to the method? 

1. A string

That's unequivocably true. 

So then, how do I want to alter the string ever so slightly to continue making calls? 

Well...what am I comparing in that string? 

I have to compare the first letter of the string with the last letter of the string. 

Then I need to remove the first and the last letter. 

Then I need to remove the first and the last letter....

And so..if the word is an even number of characters...4, or 6....If I take of the first and last letter of a word, I'll be left with a 2 character word. then I'll compare those..then I'll take those away. And then, if the string is 0 or ' '...so I'll need to know how Ruby does that. Like, i'll need to look at a two character string, and then watch waht the return is when I remove the first and last letter from a string, and see what the return is. 

But then, what will I want to do at that point? I mean...that's really projecting myself very far into the future. 

So the first thing I need to do is really figure out what happens to a string that removes two letters, the first and the last, at each iteration...I want to know what is left of the string after everything has been removed. Is it an empty string with a space? Or is it no space? 

So what I'll want to do is something like: 

```ruby
str = "word"
#=> "word"
```

Then, how do I remove a letter from the first and last position at the same time? 

I made my own method, but I'm sure there's another way to do this...Or, I feel there may be another way to do this...

So then...where did i leave off with this recursion practice? 

I'm not working on any particular Odin Project assignment...though I am working on additional homeworkf for recursion practice. 

so the first thing I wanted to do was simply to go the long way to determining if a word is a palindrome...and then see if I could work my way into recursion. 

Now, I seem to recall that I originally was using `#slice!` in this method. but for some reason I removed it...

Now...what I've done...is fundamentally changed the parameter...so I wouldn't need to do anything different now...would I? 

So, I'm just staring at the code, instead of attempting to try new or different things. 

So i'm going to pick apart the last known working method...before I attempted to just force recursion...

```ruby
def reduction(str)
  last = str.slice!(-1)
  first = str.slice!(0)
  last == first ? true : false
end
```

1. a string is being passed in
2. I'm destructively slicing the last letter off it and assigning it to the last variable. 
3. I'm destructively slicing the first letter off it, and assigning it to the first variable.
4. I'm comparing the two variables..returning true if they're the same...and false if they are not the same.

And now that I htink about it...when the destructive method is being used, it makes it impossible to compare if the remaining letter is the same...because it is possible for str[0] and str[-1] to be the same thing....

So then, how would I step down like that? 

```ruby
def reduction(str)
  str[0] == str[-1] ? true : false
  str.slice!(0)
  str.slice!(-1)
  reduction(str)
end
```

Ok, so why do I think this will work?...and why do I think it won't work?

Why it will work? 

1. Because the base case provides a situation when the first and the last letter are the same...and it's not comparing them destructively. And it'll compare the input's first character to the input's last character..if they're the same, it'll return true, if they're different it'll return false. 

Now, the reason this won't work is because the base case is too weak. 

There needs to be additional conditioning...

I can't simply return true if the first and last letters are the same..can I? 

No. That isn't a strong base case. 

the point needs to be related to the string length...

I feel like there's something about this being related to string length...

because if I make it about the string length...then I can think of it being the simplest case. 

So what would I need to compare? 

If the parameter were an empty string..what would be the return? 

well, that'd be nil...so the length would be "0"...

So if the length is "0" return "false"

...and I already know that I can have multplie return statementns in amethod...

```ruby
def reduction(str)
	return false if str[0] != str[-1]
	return false if str.length == 0 && str[0] != str[-1]
	return true if str.length == 1 && str[0] == str[-1]
	return true if str.length == 2 && str[0] == str[-1]
	str.slice!(0)
	str.slice!(-1)
	reduction(str)
end
```

there. I got it. 

It's not pretty. But it serve's it's purpose. 

And I could always attempt to re-factor.

Well, now that it's working....how else Might I make this work? 

No...I can go look at the solution from the website....

And that's how I write a method recursively to test for a palindrome.

And now I've begun considering submitting this to codereview.stackexchange

I've got a working recursive method...though I'm skeptical about it's "style"....or maybe I'm concerned about it's "smell" so to speak; I'm completely self-taught and the idea of a "code-smell" is somewhat foreign to me and I'm not sure if I'm using the term in the right context here. 

My desire for code review is to open myself and this method I wrote to critique. 

My concern is that the method is verbose, and I've been lazy in the writing of it. 


