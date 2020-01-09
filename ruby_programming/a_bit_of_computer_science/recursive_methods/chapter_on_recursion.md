#The Bastards Book of Ruby: Chapter on Recursion
So, before I dig into one of these articles, I like to predict what it is I might see, or what I might be reading about. 

But I've already read this article, so i feel like I may have some idea what it's going to be about. 

But what I've learned is that I've developed a sort of intellectual crutch for my reading comprehension. I need to write while I read. I need to parse the thing that I'm reading. So while I've already read the article, not much of it was absorbed by me. I need to actually pull it apart, word for word, idea by idea. 

But my guess is that I'll be reading about the idea of "Recursion" generally, and how to identify a problem that may need recursion...though Im not so sure about that. 

I mean, if recursion is a design pattern for an algorithm........ then how does one identify when a designed pattern is suitable for a given problem or issue? And will the pattern follow a verbatim formula? 

I mean, that's what's sort of difficult about this idea...is that it's a topic about an idea that doesn't have a specific means of application. There may be some general concepts regarding how to structure a method to model a "recursive design pattern"...but the idea of design patterns or algorithms are a much larger idea...and I think there are several 'general' design patterns. I guess without being more exposed to higher-level designing issues...it's difficult to understand the utility of a design pattern such as 'recursion'....but it seems to be a concept that the curriculum is driving home...or stressing...so I'll "eat my veggies" so to speak...

##The Article
The first thing I notice is the title: 

#### Recursion
#####A divide-and-conquer design pattern

So the next obvious thing I want to point out is this: this design pattern has a name. "divide-and-conquer". I know that in some of the other introductory articles there might have been a link to a wiki article that suggested some other popular design patterns. I think I'll take a look for that article, and see what I can find. (so the first thing I'm doing with this article is leaving it to go look at other articles...)

So there are some other "types" of design patterns. But I think what I am thinking of...is the list of implementation issues and advantages listed on the Wikipedia page RE divide-and-conquer algorithms. 

With that said, there definitely are other types, and those other types exist. But they aren't necessarily pointed out in TOP curriculum/articles. 

And I think I may want to go back and dig a little deeper into this Wikipedia page RE the Divide-and-Conquer algorithm. But my focus right now is the Bastard's Book of Ruby...so i'll keep going forward with that. 

>while it is fun and challenging to write recursive procedures, it's rare to find situations in which a loop can't do the same thing – sometimes faster.

So right away the author is giving me some fodder to have some disdain for the idea of recursion. I mean, it's a certain strucutre of an algorithm...but so are loops. And loops might be just as effective, if not faster. So then why am I so concerned with the recursive algorithm? Why is a design pattern necessary? 


I mean, i think the idea of design patterns is a step up in the abstraction world...I think that having a grasp on the language is one thing...but being able to think about programs at another level is another step in the progress of program design. 

Will it make writing programs easier? 

I mean, I want to argue that the only thing that'll make writing programs easier is writing more programs. But that requries taking time to plan...a litle bit...yeah? Maybe. 

back to the article....

I don't really know what is meant by this "divide-and-conquer" idea...and I know it comes from a different article...

And so since my curiosity keeps getting snagged by the phrase 'divide-and-conquer' i'm going to spend some more time with the other article. 

# 1/08
I want to dig into divide and conquer...I'm just not so sure about where to go with it...because the things I look for a little too esoteric for me...or they don't give me the kind of knowledge I'm looking for. I suppose I could keep digging...but I want to move on with the articles I'm looking at. And maybe continue to look for resources...but that's kind of the idea...TheOdinProject is the resource for good sources....so I'll dig into this Bastard's Book of Ruby...After I explore some other free eBooks

Alright so back to the article: 

## The King and his rocks

So, this is a long convoluted make-believe scenario to describe something. And it boils down to: 

* assume a large sample size that somehow needs comparison of the elements....

I just...I really dislike these convoluted stories...because they stray too far from the essential info....

Assume a method needs to be devised that will identify the heaviest object of many objects of varying weight

The long way to do this would be: 

1. pick up a rock
2. pick up a second rock
3. If the second rock is heavier, discard the first rock, or vice versa
4. pick up another rock
5. proceed until no more rocks

Ya know, writing it like this...I feel like I just developed a pretty good understanding of recursion. Or at least maybe how to identify recursion. 

And each of these parts is essential to recursion, at least as far as I can tell. 

1. A base case
2. Other scenarios that drive towards a base case

I mean, I honestly think that's the long and short of it. 

the next section of the article: 

## The Two principles of Recursion: 

I know I skimmed the article lst week, but I'm not sure I completely understand or retained the idea of there being two principles of recursion. Never the less, the article lists them as: 

> an end goal, or base case  
> A process in which the task at hand is reduced towards that end goal

And that is actually very similar to the two ideas I had. So read on.. 

The Base Case is like the end goal....but in all this discussion about recursion...very little emphasis or discussion is made on HOW TO IDENTIFY A BASE CASE.... Like, what is meant by a base case, in terms of a recursion problem? And how does a programming "drive towards a base case"? 

I mean, thinking about it now, the "base case" seems to be a situation of a simple math problem that can be extrapolated or articulated by the insertion of variables, and using basic math skills like "n - 1" where n is the current number. 

I mean, this is an echo to what....geometry? No...Algebra. Yes. Essentially. Not so much Calculus..maybe pre-calc...but Algebra definitely. The introduction of variables...

So like the base case would be saying something like: 

*If I'm holding only one rock, then it is the heaviest rock in the pile and claim as much*

And so that'd be the base case. That is, if something like the count of a collection is equal to 1, or less than 2, or less than or equal to 1, then we've achieved the base case. 

And then the next part of the Recursion problem would be the process to reduce towards only having one element in the collection. 

So, as I think about this "King and his Rocks" problem now...if I had all the "rocks" listed in an `Array` as elements by their weight (and resisting the urge to do something like `#max`....

I'd want to have a base case that accurately portrays what the end goal is....

So knowing, or being able to identify an end goal is a component of this process...

So that's a skill to develop. Knowing how to create an end goal or base case...

Hmm...so as I think about this...I want to know more about writing a better base case...and I found this article: 

<https://www.shmoop.com/computer-science/recursion/base-case.html>

and it makes the idea of recursion something elegant...something simple. 

And it looks like it's boiling the issue down into a well organized `if/else` statement.

Being on the lookout for "infinite recursion"; It seems like something that sort of reveals itself. 

Maybe I try again...

I think the point is...to make the method something that I can call in itself...

So that implies that the method itself is fairly simply...or simplistic...

So then, how would I write a simple method for the current `arr`? 

yeah...there seems to be...not necessarily a definite method to writing recursive functions, let alone base cases. it almost seems more....creative. Or at least instinctual. Or even artistic. Or inspired. 

Though what i've read makes it seem like it's something that comes with trial and error, and doing it more may make it more second nature. Still, this Schmoop.com article seems insightful. And seems to build on the topic from the TOP article in Bastards book...

So...this is what I like about this Shmoop article....it gives me the opportunity to visualize. So i'm going to do a sidebar in this bastard article for this shmoop article...


##Recursion: The Call Stack
>In recursion, the goal -- the end condition -- is always the **base case**. It's the bottom of the barrel, the _end of the recursive calls_. 

So, this is maybe the image that I'm not drawing for my own mind's eye: recursion is the calling of itself over and over again...until a base case. 

So, while a base case is necessary...so is the calling of the method as well. 

so maybe I need to extrapolate the idea of recursion a little bit. And that's what this article is doing. 

>If a recursive method calls itself, it has to stop when it hits the base case and works it's way back up to the original method. 

Ok...so again, here's something of a visualization: A method, calling itself, and then somehow 'building' something for itself in memory and also giving it an opportunity to do something different than it's past action. 

so something like finding a factorial: 

```ruby
# summing numbers 1..4
def recursive_method(n)
  return n if n == 1
end
```

so now, if I do

```ruby
recursive_method(1)
=> 1

recursive_method(2)
=> nil
```

so, this really helps me, a lot. I mean, if the method wasn't written to handle the situation, it'll simply return `nil`. Which is different than a `SystemStackError`. 

but to develop my understanding of writing a recursive method, at least for a factorial...I want to continue to develop the original method...

```ruby
def recursive_method(n)
  return n     if n == 1
  return n + 1 if n == 2
end
```

So, this'll do something else....obviously

```ruby
recursive_method(1)
=> 1

recursive_method(2)
=> 3

recursive_method(3)
=> nil
```

again, I've illustrated what will happen if I provide a parameter that has not been considered in the method body. 

So I feel at this point, instead of continuing to extrapolate so much, I might need to begin using recursion...

...and that means, calling the method, _within itself_. 

But I don't quite see the pattern yet. Just staring at it won't necessarily make it seen. 

Maybe it might help to write slightly different methods....one to contain the base case, and another to handle other situations...

```ruby
def recursive_method2(n)
  # but I don't know how to set up this part of it 
  recursive_method(n)
end
```

Alright, so I went back to the video by Joshua Cheek, and the first thing I see is...a difference in my base case...


```ruby
def sum_upto(n)
  return 1 if n == 1
end
```

which is different then my basecase, because I was saying: 

```ruby
def sum_upto(n)
  return n if n == 1
end
```

So, why is my base case a bad base case, while the previous base case accurate? 

So, the "thing" that is different is very subtle, but very specific...the return value. The return value is hard coded in the base case #1...to be a specific value...where as the return value in the base case #2 (which I wrote) is still dependent on the parameter. 

Now that's not necessarily a bad thing...however, the parameter is going to be changing. Not just in the initial call of the method...but it's going to be changing in the subsequent calls of the method. 

But I don't want to go too far with my rationalization for why I've done something wrong just yet, because these details may change here shortly. I just want to make a note of these things first...

Ok...so doing the next line in the method shows the strength in a recursive method...but immediately using the method's base case...

```ruby
def sum_upto(n)
  return 1               if n == 1
  return sum_upto(1) + 2 if n == 2
end
```  

so, right there, I see a couple things: 

1. I see a base case (n == 1)
2. a call to itself (sum_upto(1)) within the method
3. the parameter being used to determine a call to the method itself

I'm not sure If I need to point out the last thing. 