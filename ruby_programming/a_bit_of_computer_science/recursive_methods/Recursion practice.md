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
So, at the time the recursive `#rec_arr` method is called, there is a parameter that has been passed into the original `#rec_arr` method...and that parameter has the value of `arr`. So Ruby is placing the performance or completion or execution of the original `#rec_arr` method (which includes the recursive `#rec_arr` call) to complete the recursive `#rec_arr` call