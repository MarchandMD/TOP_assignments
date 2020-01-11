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


Ok, so if I stop fuckig around with the method, and just stick with whatever it is i have...I like it a lot more...

```ruby
def bottles(n)
  return "no bottles of beer on the wall..." if n < 1
  puts "#{n} bottles of beer on the wall..." if n >= 1
  return bottles(n - 1)
end
```

Ok, so this I actually do like some. So since I feel like I've made some progress, what is it about this that feels like progress? 

Well, so, I got to this point more or less after I started looking at the pseudo code...and I realized that to actually perform the song, I needed to sing it backwards....it's easier to approach it, if I sing the song...and the song starts at 99. 

So that helped. 

But then I needed to figure out how to actually call the method...I needed to figure out how to apply the method recursively. 

Now, I know that I can have a return clause in a method. And one fo the things that watching the video taught me is that I can have multiple `return`s in a method. So that is one of the subtle things I took away from the video. 

Then there is the placement of the method. Like, i didn't really know how to place the `bottles` mehtod call within the `bottles` method. I just new that I needed to. 

i think my original iterations included subtracting 1 from n within the method body...and also on one iteration I attempted to actually return the value of `n - 1` as part of the process. But that didn't work either. 

So, at some point, needing to continue to try new things...I tried using `puts` instead of `return` but that wasn't successful. The logic behind that was: that I needed the method to both `puts` some statement in one situation, or `puts` smoething else in another siutatino. 

But I can't seem to marry the two things....

I have to segregate..I have separate the things...I don't think I need that additional `if` expression.

Now, I' going to re-arrange the method one more time: 

```ruby
def bottles(n)
  puts "#{n} bottles of beer on the wall..." if n >= 1
  return "No more bottles of beer on the wall" if n < 1
  return bottles(n - 1)
end
```

I like this better. 

the first expression is a basic `puts`...but it's a conditional expression. So evaluation of the parameter will happen. And if it's not `true` then it just won't happen.

So then, the method moves on to the rest of hte method. 

the next line is the base case. 

```ruby
return "No more bottles of beer on the wall" if n < 1
```

Again...another conditional expression. 

And this conditional expression is attached to a `return` statement, so it's a little more determinisitic. The method will finish execution here. 

So I think it's important to realize that learning about recursion is more than just learning about calling a method within a method. 

It seems like it's more about learning more about the language..and it's nuances. 

So yeah. I mean, I figured this one on my own. 

Now, I see why it continues to feel like it could be reduced even more. It's because there's still some things that seem like they're related. But if I appreciate this for what it is, maybe i can't...

Maybe one of the lessons is that the base case doesn't need to be at a certain location in a method...but it does need to be inthe method. 

Oh, yeah, I'm goign to take a look at the rest of my method, because I'm pretty sure I can reduce some othe runnecessary clutter....

Yeah, ok, so I've made the `bottles` method about as pretty as it's going to get: 

```ruby
def bottles(n)
  return "No more bottles of beer on the wall" if n.zero?
  puts "#{n} bottles of beer on the wall..."
  bottles(n - 1)
end
```

And that's pretty good. I got a little help with the `n.zero?` bit, and also the removal of `return` from the last line to be just `bottles(n - 1)`...so yeah. I think I'm about ready to return to the Bastard book article. 

## Back to the article
Ok, so while I'm being hyper critical of the article, I'm going to focus on taking something away that I can....now the first thing I want to do is point out the code that i'm going to be working with: 

```ruby
rocks = 30.times.map {rand(200) + 1 }
rocks.join(', ')
max_rock = 0

rocks.each do |rock|
  max_rock = rock if max_rock < rock
end

puts "Heaviest rock is: #{rock}"
```

So, the article shows this as being a simple version of a loop. which it is...`#each` is an iterator...so it's simply looping. 

Now up to this point, I've been annoyed and dissapointed with the article. BEcause there isn't much taht i'm taking away from it. But I just started reading it this morning, so it's a little early to be too critical....

But the article also sets up, at the same time as setting up the previous example...a way to do the above with `#inject`...which is a method I've used very rarely before now....so let me take a look...


```ruby
puts "Heaviest rock is: #{rocks.inject { |max_rock, rock| max_rock > rock ? max_rock : rock} } "
```

So, `#inject` is being used here in string interpolation...so it'll be returning a single item. 

It is being called on `rocks` Array, so it's an iterator. And it accepts a block. Th block apparently is receiving two arguments from `rocks` via `#inject`...max_rock and rock. If the max_rock is greater than the rock, then return the max_rock, otherwise, return the rock. 

So, what is this doing? What is just the call to `rocks#inject` doing? 

`#inject` has a very...special feel to it. It feels a lot like a method I really liked in Javascript...but can think of right now. Let me take a look at MDN, because I did like that method a lot, but I can't remember it's syntax right now...

Wow, that's wild: I typed in "MDN" to DuckDuckGo...and the single prefilled result was `Array#reduce()`...which is exactly what I was looking for. So yeah. 

So it seems like `#inject` is very similar to the `reduce` method in Javascript. 

And to be honest, the `#inject` method is an alias for `#reduce`...which the `#inject` documentation even mentioned. So i can think of `#inject` as I think of `#reduce`. Taht's already making this article worthwhile to look at. 

Next. 

> The recursive algorithm does not require a loop.

So this is a "bedrock" sort of truth about recursive algorithms: recursion removes the need for a loop. I'm pretty sure this is justified in being considered so steadfast. What else? 

>Instead, I define a method that accepts one argument: an array of values  
> * If the array has two values or fewer, return the largest of those two
> * If the array has more than two values, split it into two arrays. Then invoke the method two more times to handle each sub-array. 

Now this definition gets me back to the visual of the original divide and conquer algorithm...

![aVisualAide](/Users/michaelmarchand/Documents/Coding-macbook/TheOdinProject/TOP_assignments/ruby_programming/a_bit_of_computer_science/recursive_methods/divide_and_conquer_visual_representation.png)

So...this is similar....it includes the division into a sub-array, until an array is a certain length. And then doing something after that base case has been reached. So..I'm pretty sure this is considered a "binary search tree"....sort of.

Ok, so I'm pretty sure I'll be looking at things like a binary search tree further down the line...so i'm glad I introduced myself to this idea now. Keep going....I think I am still in the article...

So, now, this comes back to the idea of this `#rock_judger` example: 

```ruby
def rock_judger(rocks_arr)
  if rocks_arr.length <= 2
    a = rocks_arr[0]
    b = rocks_arr[-1]
  else
    a = rock_judger(rocks_arr.slice!(0, rocks_arr.length/2))
    b = rock_judger(rocks_arr)
  end
  
  return a > b ? a : b
end

rocks = 30.times.map {rand(200) + 1 }
puts rocks.join(', ')
puts "Heaviest rock is: #{rock_judger(rocks)} "
```

Alright, so, yeah...I've already ripped this one apart for an online friend, so I'll take a look at this again...

Because this is something that I was attempting to emulate maybe as recently as that `#bottles` method...

Ok. so what am I doing now? 

Let's look at this method, and the way I like to look at methods is by starting with any parameters they accept. because that's really where the story begins...the object being worked on. 

The first thing the method body does with the parameter is: 

1. observe the length of the parameter, which tells me the parameter is an array. And if the parameter length is less than or equal to 2, then two variables are assigned. The way the variables are assigned means the values of the two variables (a and b) will either be the last two values of the array, or they'll be the same exact value, since calling `array[-1]` is the same as calling `array[0]` with an array length of 1. 
2. Now if the parameter length is more than 2, something else is happening, and it's only a little more involved....but that's because it's the actual recursion. The two variables (again, a and b) are being assigned a different value, as opposed to an absolutely placed element with in an array of length <= 2. And the value the a and b variables are receiving are calls to the method I'm currently in. So, since I already have a base case in place...I know that the base case will take place...except that I'm currently in the scenario that is not the base case. So then the thing that needs to change in the assignment of the a and b variable, which is a recursive call to the current method being defined....is a change to the parameter being enacted upon. And this is what's interesting. In step one of these two steps, i already determined that the parameter is an array, and the first thing that the method does is consider the length of the parameter array. So then what needs to happen in this NON BASE CASE of the recursive method...is somehow alter the length of the parameter...to be something less than it's current length. And this variable assignment/recursive method call does so in an interesting way: 

```ruby
a = rock_judger(rocks_arr.slice!(0, rocks_arr.length/2))
b = rock_judger(rocks_arr)
```



  