#Bastard's Book of Ruby: Chapter on recursion, continued
So, the point of the section, is to learn how to write recursively.

And so, what I want to do in this method, is to call itself. That's the point. 

So continue to extrapolate this method the excruciatingly long way, until I see how to recursively do it...

But i've already gone astray...because what i want to do is: immediatley in the non base case...is call the method. So that's what I 'm going to try to do....next

Ok, so the first thing I want to point out is that my version of the `bottles` method isn't recursive. Or at least, it isn't immediately recursive as the `factorial` method is. 

A method is recursive if it calls itself. And so that's what I want to look at. I want to look at how the `factorial` method employs recursion....

```ruby
def sum_upto(1)
  return 1   if n == 1
end
```

So again, this is how things start...then, the recursion is added

```ruby
def sum_upto(2)
  return 1               if n == 1
  return sum_upto(1) + 2 if n == 2
end
```

So, yeah. 

This is straight forward here...because I know what the `sum_upto(1)` will return. It's such a small thing. In fact, it's just a statement. 

so in the method, the base case is established by unequivocally being assigned to a value that the call stack will eventually evaluate to. 

so, the base case must be an expression. and what's making it an expression is the `if`...or is it the `return`? does it matter? I'm not sure. 

but I do know this...the `if` expression will result in a value. 

And the way it's written: 

```ruby
return 1 if n == 1
```

is complete. 

so then, how can I write a base case for the `bottles` method, that is definite? 

Well, what I know is, the parameter will definitely become 0. so try to write a base case that'll satisfy the situation when the parameter is 0, or less than 1 maybe. 

Now, I'm not really sure how to do the next step...because I have to write a process...

>...in which the task at hand is reduced towards that end goal...

Well, here's what I know about the song 99 bottles....

1. I start with 99
2. I sing "99 bottles of beer on the wall..."
3. Then I sing "take one down...."
4. Then I sing "98 bottles of beer on the wall..."

How could I write this in psuedo code?

1. I start with `n`
2. I sing "`n` bottles of beer on the wall..."
3. Then I reduce `n` to be `n - 1`
4. Then I sing "`n` bottles of beer on the wall..."
5. Then I reduce `n` to be `n - 1`
6. Then I sing "`n` bottles of beeer on the wall..."
7. Then I reduce `n` to be `n - 1`

Ok, so...this is definitely repeating....

What if I were to start at the other end of things? 

Hmm, that actually helped me. A lot. Deciding to write it in reverse. 

But what am I looking at? and what did I do? 

```ruby
def bottles(n)
  return "no bottles of beer on the wall..." if n < 1
  if n >= 1
    puts "#{n} bottles of beer on the wall..."
  end
  return bottles(n - 1)
end
```

Now, could I write that `puts` differently? 

```ruby
def bottles(n)
  return "no bottles of beer on the wall..." if n < 1
  puts "#{n} bottles of beer on the wall..." if n >= 1
  return bottles(n - 1)
end
```

Can I refactor this further? 

```ruby
def bottles(n)
  return n < 1 ? "no bottles of beer on the wall" : bottles(n - 1)
  puts "#{n} bottles of beer on the wall..."
end
```
