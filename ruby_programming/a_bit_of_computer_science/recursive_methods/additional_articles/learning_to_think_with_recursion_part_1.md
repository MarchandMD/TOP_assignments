# Learning to Think with Recursion, Part 1
<https://medium.com/@daniel.oliver.king/getting-started-with-recursion-f89f57c5b60e>

So, I feel the need to do some more learning about recursion, like, in addition to the articles that I'm getting from TOP. 

Because I still feel soft, and I feel like there are so many resources out there taht I really need to be branching out and looking at some other articles...because there are a lot of them...and maybe there's a different article that'll make more sense to me....or help to re-inforce the idea of recursion, or some parts of it.

With that said, the first article is linked about that Im going to read and use to bolster my study of recursion. 

So, the author states that his goal for the article is to talk about "how" to do recursion..as opposed to just what recursion is...so I'm going to move forward with this one.

> ...most people focus on the fact taht any recursive function needs to have 2 parts: 
> 
> 1. A base case, in which the function can return immediately
> 2. A recursive case, in which the function must call itself to break the current problem down to a simpler level

Now...this begins to add some more understanding about the different parts of the recursive method. I've known generally taht the recursive function has a base case...but I haven't really "known" what it was attempt to accomplish...And here the author claims the base case is a situation, or a case in which the function can immediately return. 

Now, I want to take a second and say that at this point...I know that Ruby will create a stack while doing the other function calls...and she won't evaluate them....and why won't she evaluate them? 

Because I've tricked her. 

I've caused her to launch another method while she's already launched a method. 

And why did I do that? 

Because I'm launching the same method, with a slightly altered state....something about it has changed. And I'm pretty sure the thing that is changing is the parameter. I mean, that's the easiest way to do it. 

So, when I start thinking about it in terms of the call stack, it starts to be a new thing for me to think about. 

I mean, what is the program...the engine...doing? The engine is doing what it's supposed to do..and that's find an answer...or return a value. Even if that value is `nil`. But what I'm doing is i'm giving the program something to evaluate, before it's done evaluating something else. 

But I need to think about how to reach the end of the stack...well, is it the end of the stack that I'm trying to reach, or am I trying to reach....the beginning of the stack? I"m pretty sure that's what I'm trying to reach is the beginning of the stack...well...it could be....

>Most of the time, I have heard people teaching recursion focus far too much on the base case, and not enough on the recursive case.

I do spend a little more time focusing on the base case. And that's because I feel like the base case is a little more definite. 

but at this point, I don't feel like I'm capable of doing either things. I feel like the base case is often times....unrelated to the actual problem. Or...I'm adding too much logic to the base case. Or I'm trying to make the base case too complicated. 

But perhaps this is what the author is talking about....he's talking about the need to focus on, equally, or maybe more...the other part of the method...the recursive case. 

But I sitll want to focus on the base case for my discussion...because I've had a new thought about it in relation to the call stack.

#### The base case should be thought about in terms of initiating a cascade of successful method calls, that leads to the output of the base of the recursive case call stack. 

Now, putting it like this...I think entirely differently about the base case..and what it's intended to do. 

Because...can I put a recursive call stack into a visual repressentation? I mean, i think that might be helpful to me. 

Because...

The base case is going to return a definitive value. 

Make the method do what I want...but then call the method before exiting...with the different parameter..

But I actually do feel like I have trouble deciding what the base case should be. Like, I just don't understand right now...maybe I need to take a closer look at the examples i've been shown? And make some statements about that? 

>When I sit down to write a recursive algorithm to solve a problem, I have found it to be helpful to go through the following thought process in order to decide how the recursive call should be structured:  
>
>1. Break the problem I am trying to solve down into a problem that is *one step simpler*

Hmm...so I don't understand this. Maybe if I re-phrase it a different way: 

Break down the problem to make it one step simpler...

It feels like there's a lot of information being left out of this. This doesn't feel like a sort of approach that can be learned from...but I"ll keep going, because perhaps there is something to learn...

I mean...how can I quantifiably break a problem down by one simple step? 

>2. Assume that my function will work to solve the simpler problem — really believe it beyond any doubt

Ok...so this seems really stupid....like...just have faith....

>3. Ask myself: Since I know I can solve the simpler problem, how would I solve the more complex problem?

I don't understand this approach. Because I'm not sure what it means to do any of these steps....

>To illustrate this thought process, let’s look at an example. Suppose that we want to write a recursive function that will return a reversed copy of a given string:

```ruby
def reverse_string(str)
  # stuff goes here
end
```

>First, let’s get the base case out of the way: If the string is only one character (or, for that matter, if it is empty), then we don’t need to do anything to reverse the string, and we can simply return it:

Ok..so this is obvious...but it's not how I would have approached the base case. 

So the base case...is less about....creating a function that works absolutely...and more about...creating the condition where the parameter is nothing...or the purpose of the method is not applicable. 

I mean...the method here is meant to reverse a string. And the base case here is handling a situation when the parameter is an empty string...or a single character...so that's like 2 base cases...but really it's two conditions that can be combined into one....so it's essentially saying...if the string being passed to the method is empty...then return it, because it's already reversed...or it's saying...if the parameter being passed to the method is one character long, return it...because it's already reversed...

Right? 

```ruby
def reverse_string(str)
  return str if str.length < 2
end
```

Ok..so this is the existence of a base case. And what is it doing? 

It's returning out of th emethod...so the method does something very obvious...but in a very narrowly defined way. 

the method only returns a value if the parameter length is less than 2. So the base case is creating a base scenario for the parameter. I mean, it's also the method...but it's more about the parameter. I mean, the parameter here is this string. And the str..in the base case scenario...will never be more than 1 character long. 

So it's a base case...but a base case for the parameter...

Now I also want to point out that this base case is using an `Integer` as the logic. so it's using some aspect of the parameter to create an Integer in a situation when the parameter itself is not an integer. So i'll keep that in mind. 

And this base case for the parameter is important to keep in mind...because this is the method that is going to remain at some point at the core of the recursion...

>Now, for the more challenging part — figuring out how to write the recursive call to accomplish the rest of the task. Let’s go through the thought process that we outlined above:
>
>* I am trying to reverse a string. A problem one step simpler would be to reverse a string that is one letter shorter.

What is the author trying to say here? 

If I am trying to reverse a string that is 10 characters long...a problem one step simpler would be returning a string that is only 9 characters long.....

is that really though? I mean...Is this how I would define "one step simpler"? 

I don't think so. But what is the author trying to say.....I think the author is trying to say: 

> attempt to solve a problem that's just a little smaller than the complete problem. Like, identify some way to subtract one from some numeric quantity of the original problem....


maybe. Any way..

>* I will assume, and believe with every fiber of my being, that my function
can correctly reverse a string that is one letter shorter than the one I am
currently trying to reverse.

Well, this actually isn't at all helpful. I appreciate the idea of having faith...but really what he's doing he is acknowledging that there are a lot of things that are about to happen in the course of a very short amount of time, and specifically it will be happening in the call stack, which is a little too fast to acknowledge, but will be performing....

>* I ask myself: Since I know and believe that my function can correctly reverse a string that is one letter shorter than the one I am currently trying to reverse, how can I reverse the whole string? Well, I can take all of the characters except the first one, reverse those (which I know and believe that my function can do), and then tack the first character on to the end! In code, it would look like this:

Wow...that was really frustrating...at the same time exciting and interesting!

Like, why?! Why did it work?! 

The author says: 

>I did not think about how I could break the problem down all the way to the base case. That is the function’s job, not yours. Instead, I only thought about the problem that is one step simpler than the problem I am really trying to solve, and then I wrote my recursive algorithm to build up from there to solve the real problem.

this is such a strange concept. 

And I don't really feel like I"m making progress after this article...sO i'm going to move to a different resource...

see..so, this is where I was going...I've been doing a lot of thinking about this...and I've probably already thought some things that make sense to me...like..thinking about what the method returns...because what Ruby ends up doing is...placing the previous method call on "hold" until the next method call returns a value...and then Ruby will do something with that returned value.


```ruby
def reverse(str)
  return str if str.length < 2
  reverse(str.slice(1, str.length)) + str[0]
end
```

the recursive case...look at the recursive case....

it's a call to the method itself.....

So...when will the method be called? 

Inside the call to `#reverse` when the `str >= 2`. 

And so then...what will the embedded `#reverse` method do? 

It'l take the original `str` parameter...then it will `#slice` a portion of it off...from `1, str.length`....so what is that? 

So, what's inherit to know is how the `#slice` method is working....which I don't actually know. 

So that's the really eye opening thing. I mean, I really have no idea how this method works...but I just read it, so now I do...

`#slice` works like this: 

it can accept a couple of different combinations of arguments. 

the way I'm using it ehre is: 

```ruby
str.slice(start, length)
```

So this means that the first argument will be the starting location, and the second argument will be the length. 