
#divide-and-conquer algorithms
Alright, so, I keep making an effort to dig into the Recursion chapter from the Bastards book...but I realize I've sort of glazed over the introductory page from TOP...as well as a link to the Wikipedia page. 

>Recursion is the idea that a function calls itself...

Ok. so this reminds me a little bit of the work I've done before with recursive methods. I have touched on them before, but I just haven't used them a lot, and I don't know the benefit of them to the point of being able to say that I know them very well. so I'll dig into this a little bit more here...


But what I do want to say is: 

If a method is going to call itself...then something will need to change...otherwise...what is the method doing? 

So another idea i've thought of recently, or maybe not so recently, is that a method I create is typically easier to understand if I think of the method in terms of operating on some input..and the input for the method typically comes from it's parameter or parameters. 

What I mean by that is...if I'm going to write a method....then the implication is that the method will be doing something to something else. The method will have some input, and then it will have some things it wants to do to that input. 

I guess this makes me think of another piece of knowledge I've heard in hte past about a method being a microcosm of a class...or a microcosm of an instance of a class....

By this I mean: a method can have state and it can have behavior. the state would be the parameter or the static thing it is going to work on...and then it has the method body, which is the behavior of what it's going to do to the state that's being passed to it. 

then finally, the method once again results in a 'state' by returning some value or some evaluated expression. 

So in that regard, I see what is meant by a method being a microcosm of an instance of a class. 

So what else? 

Well, the reason I bring this up is....recursion. 

If I'm going to write a method, then I'm going to provide it some input. The easiest way to think about this is if the input is an `Integer`. And then, what I would say is...if the intial method accepts an `Integer`...and the body of the method is supposed to call itself...then the parameter I would pass to the method call within the method body...should be a little different then the initial parameter. 

So an easy way to illustrate this would be: 

```ruby
def my_recursive_method(n)
  1 + n + my_recursive method(n - 1)
end
```

NOw, I'm pretty sure if I ran this, it'd ebe stuck. Because a central tenet of a recursive method is this idea of a "base case"...that is...a situatinon that'll eventually lead to the method resulting in some absolute value. 

I think that's sort of illustrated with something similar to this: 

```ruby
def my_second_recursive_method(n)
  return if n < 1
  else 1 + n + my_second_recursive_method(n - 1)
end
```

or something to this effect.

And that's why I'm reading this article...because I'd like to know specifically what's supposed to be happening. 

>...(recursion is) used to take a big problem and start breaking it down into smaller and smaller pieces (“Divide and Conquer”) and continuing to feed their solutions back into the original function until some sort of answer is achieved and the whole chain unwinds.

So, this paragraph introduces the idea of a "divide and conquer" strategy...the division is a breaking of a big problem into smaller pieces...and subsequently smaller and smaller pieces...and then the paragraph says something else....

>...continuing to feed their solutions back into the original function...

so this suggests that the method is being executed...somewhere...

>...and then the how chain unwinds.

Now this sentiment is really interesting to me. What is meant by the "chain" and "unwinding"? 

I mean, thinking about it now...the chain would be....

1. method call #1 with a bigger piece
2. method call #2 with a little smaller piece
3. method call #3 with a little smaller piece
4. method call n with the smallest piece

then the unwinding would be...the idea that links higher up then the smallest (base) case would wait for a solution to arrive from the stack, so it could do it's thing. 

So I think that's kind of the idea that hasn't really been seen...or that I've only begun to appreciate...what I'm doing now...is programming at the limits of the computers capacity to handle errors....so I'm going all the way to the limits of the error stack..before going to "stack overflow" and then I'm returning an answer...and resolving every error that's been built up in the stack. 

Great. 

but again, this is still only the first paragraph of this introductory article from TOP. 

The next paragraph is taken directly from the Wikipedia article RE 'divide-and-conquer algorithms': 

>In computer science, divide and conquer (D&C) is an important algorithm design paradigm based on multi-branched recursion.

So..i'm just learning what general "recursion" is...but all of a sudden I'm seeing something about "multi-branched recursion"...

>..A divide and conquer algorithm works by recursively breaking down a problem into two or more sub-problems of the same (or related) type, until these become simple enough to be solved directly.

ok....i'm hesitant...but i'll remain as such. 

>The solutions to the sub-problems are then combined to give a solution to the original problem.

So this harkens back to the idea of the "base_case" being used to resolve the original problem....by providing solutions to the sub-problems after the base-case is resolved. 

So it's the idea of delayed gratification...or delayed resolution....

>There’s also a right and wrong way to use recursion.

Oh great...morality.

> The fact is, any problem you can solve recursively you can also solve using the iterators that you know and love. If you find yourself saying “why didn’t I just use a while loop here?” then you probably should have. You won’t often end up using a recursive solution to a problem, but you should get a feel for when it might be a good idea. Some problems also break down into far too many pieces and totally overwhelm your computer’s memory. There’s a balance.

This is like the authors caveat paragraph. It's like it's saying: "you're going to learn how to do recursion..but it's not like it's a panacea" 

>In this brief lesson, you’ll get a chance to learn more about when and how to use recursion...

Ok, so this is the thrust of the lesson....learn when and how to use recursion. 

so that should be what I'm looking for. Those should be the things I keep my eyes and ears and perception open for...



Still, what I want to do is look at this Wikipedia article..a.gain...

# Divide and Conquer
>The divide-and-conquer paradigm is often used to find an optimal solution of a problem...

So, the suggestion is...a problem has first been identified...and i want to find the solution in an optimal way. 

I mean, I think theoretically this is always the way? No? 

>..Its basic idea is to decompose a given problem into two or more similar, but simpler, subproblems, to solve them in turn, and to compose their solutions to solve the given problem.

Then, after the complex problem has been broken down enough...

>Problems of sufficient simplicity are solved directly. 

So the example the article gives is the idea of a **merge sort algorithm** which apparently is a type of "divide and conquer algoritm"...

