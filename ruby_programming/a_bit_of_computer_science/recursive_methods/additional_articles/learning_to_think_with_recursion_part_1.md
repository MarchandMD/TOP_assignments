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