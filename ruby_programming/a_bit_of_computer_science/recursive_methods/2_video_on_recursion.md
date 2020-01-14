# Ruby Kickstart: Introduction to Recursion

Alright, I'm going to go through this video again, because I want to slowly walk through it. 

Now, already, I feel like there is some important information being shared. 

Specifically, the original problem. 

The original problem is: 

```ruby
(1 + 2 + 3 + 4)
```

So, it's a math problem, that includes integers that are getting larger incrementally by 1, and summing their values. 

So, another way I could write this is: 

```ruby
(1 + (1 + 1) + (1 + 1 + 1) + (1 + 1 + 1 + 1))
```

or maybe...I could even write it like this: 

```ruby
(1 + ((1) + 1) + (((1) + 1) + 1)) + ((((1) + 1) + 1) + 1)
```

back to the video...

So, what I like about this example is it's simplicity. 

```ruby
def sum_upto(n)
  return 1 if n == 1
end
```

That makes it really easy to understand what

```ruby
sum_upto(1)
```

will return. 

In fact `sum_upto(1)` is the only parameter that will illicit a valid return value from this method. 

Now to keep going...

```ruby
def sum_upto(n)
  return 1 if n == 1
  return sum_upto(1) + 2 if n == 2
end
```

Now, what this second line is doing is developing a situation where a different parameter can be used. Specifically the number 2, which is also not 1. 

And what the second line is doing is returning both the value of `sum_upto(1)` AND it's adding a value to that value, which is `2`...and so the original method is returning the value of:

1. **The RETURN OF SUM_UPTO(1) PLUS**
2. **THE `+ 2`**

So, very quickly, things become complicated...but what does it invovle? 

It involves the return vale of a base case, plus the return value of the original method call with a parameter different than the base case. 
 

