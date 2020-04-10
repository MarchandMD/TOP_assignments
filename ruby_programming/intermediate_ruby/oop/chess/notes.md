So, if I'm going to start this, I'm going to go all in. 

There is no half-way with one of these programs. And I don't necessarily remember what I do, other than take lots and lots of notes that I never look at again. However, writing it all helps to synthesize and assimilate. 

So then I'm going to start by bjilding the netire thing; and that means it's beuilt entirely from scratch. Adn I don't really know what that means. I mean, I know that I build things straight up from the ground. though the question is..........do I need to do the testing too? I've done that in the past. And I do want to learn how to do more of it, but i also want to build and build from scratch. Taht was really helpful to do when i was doing the tic ta  toe and it helped when I was doing from the mastermiind as well. So this is just another opportunity to build up from the ground up, until it's all good. 

So, yeah. It's something to throw myself into. Unlike a well of any type.

# Step 1: create the gem
So yeah, I build these things as Gems. And the start is: 

> 1. $ bundle gem <gem name>

# Step 2: start building

Plain as day; after the file structure is generated, get to building; that's what I really liked about the TicTacToe tutorial; just start building. 

## class Piece

Piece; that's very general. The chess game has pieces. There are some similar qualities/characteristics they all have. The all have a color, they all have a position, and they'll all have a unicode; that is, some specific unicode that is unique to the specific piece it is. So it makes sense that the `Piece` class will be a Master class or a Parent class. So this is the idea of inheritance being put in place. Something I haven't done before, but it won't be too difficult toa ppreciate. And it'll be good to see it in action. 

Instead of going on to the other pieces that'll be inheriting from `Piece` I could do `class History` or `class Square` which I think is going to be similar to a `Cell` class, but I'll adhere to the convention used by this author for the duration of the entire project, because it's just easier to do that. And leave the criticism to here. 

So, instead of doing the other classes, I'm going to launch right into the inheritance. 

## class Pawn

Do I want to talk more about the parts of the `Piece` class right now? No, I don't. There'll be plenty of discussion regarding that later. 

Alright, before I go on, i'm going to address the thigngs I don't know about. 

So, i'm going to point out some things taht seem strange to me: 

1. The use of a `:color` attr_accessor instance variable, because `:color` is part of the `Piece` parent class. There must be something realted to the idea of using the `super` keyword, but I've never used it and I've neer seen it in action. Or I have seen it, but I don't remember, because it hasn't been a common idea. So i'm going to go ahead and move forward with it. 

### The `super` keyword

> https://medium.com/rubycademy/the-super-keyword-a75b67f46f05

Let's see if this helps...

topics for consideration: 

1. implicit arguments
2. `super` vs `super()`
3. `super` with blocks
4. `super` with the ancestor chains

#### 1. implicit arguments

> When a mehtod wtih argumetns is overriden by one of it's child classes then a call to `super` without any arguments in the child method  will automatically pass the arguments of the child method to the parent method. 

Hmm, ok, so I want to understand this, because there is some ambiguity here. a method with arguments is overriden by one of it's child classes....

So what's tis saying? A method exists in a parent class (or a superclass) and that method accepts arguments. This is also saying it's possible to "override" that method by something in the child class, with a call to `super`. But this paragraph is saying that the call to `super` WITHOUT arguments or parameters will pass the arguemtns of the child method to the parent method. 

Well, i'm assuming that the call to `super` is the method with the arguments/parameters..and that's probably not the case. The arguments being considered could be the arguments that are existing on the method name...that is on the actual method call itself. So if a child method is defined to accept parameters, and then the child method is built with a call to `super`, then the method is invoked with a parameter, then when Ruby gets to the `super` call, then she will take the argument passed to the method originally, and send those to the aparrent method. 

That makes sense. Because what this is doing is saying the the `super` call has implicit argments. They're implicit because they're not explicitly attached tot he `super` call, and their implicitly taken rom the call to the original method. Easy enough to understand. 

Alright, all this from the first line in the paragraph/article. That's good through, That means I'm digging into the topic and being sure to understand the thing. 

But now comes the next line...

> ...When a method wtih arguments is overridden by one of it's child classes then a call to `super` without any arguments in the child method will automatically pass the arguments of the child method to the parent method.

So this is a little confusing. This is actually a lot confusing. Because there's a couple of things that need to be kept consistent: 

1. A Parent class
2. A Child class
3. A Parent method
4. A Child method
5. A call to the `super` method
6. arguments/parameters required for the Parent class
7. arguments/parameters required for the Child class

So, there are a ton of assumptions in this article, already: 

1. The idea that a `Parent` class is existing. 
2. The idea that a `Child` class exists and is inheriting from the `Parent`. But I'm not sure that's an assumption so much as a given. I mean, it wouldn't be called a `Child` class if it wasn't inheriting from the `Parent`. 
3. In the `Parent` class there's a method with name `xyz`
4. In the `Child` class, there's a method with the same name: `xyz`
5. The `Parent - xyz` method requires arguments
6. The `Child - xyz` method does something called "over-ride" the `Parent - xyz`
7. The "over-ride" happens when `Child - xyz` contains the `super` keyword
8. It's possible to call `super` with or without arguments. the situation I'm considering in this article, at this point of th earticle, is the calling of `super` WITHOUT arguments. 
9. The `Child - xyz` method had arguments when it was called
10. The `Parent - xyz` method accepts arguments (or maybe requires them)
11. The parameters/arguments on `Child - xyz` are passed to `Parent - xyz` and used in that method

I think I'm understanding it correctly. There's only one way to know, and that's to move forward in the article. 

Ok, I think I was pretty close in my understanding of it. 

Essentially what the article showed me in an example is: 

1. The `Parent - xyz` method is written as such: 


```ruby
class Parent
  def say(message)
    p message
  end
end

class Child <Parent
  def say(message)
    super
  end
end

Child.new.say("Hello There!") => "Hello There!"
```

1. So what is happening is `Child#say` is being called with the parameter `"Hello There!"`. 
2. Then, within the `Child#say` method, the keyword `super` is being invoked, without any parameters
3. Ruby then goes up the heirarchy chain from `Child` => `Parent` (and then up higher if possible/necessary) looking for a `#say` method (or more generally a method of the same name in any of the "ancestor" objects)
4. When Ruby finds the corresponding method `#say` in the `Parent` ancestor, Ruby will execute that method
5. In this instance, the `Parent#say` method is expecting parameter and will use the parameter that came from the `Child#say`

And I think that's a wrap of the "implicit arguments"

#### 2. `super` vs `super()`
So, the end of the first section begins with teh question leading into the second section, which is a literary device I appreciate. 

> ...But, what if the `Parent#say` method doesn't expect any arguments/parameters? 

Now this is something I can appreciate. 

This requires a redefinition of the `Parent#say` method...and definitely helps with the explaantion: 

```ruby
class Parent
  def say
    p "I am the parent"
  end
end

class Child < Parent
  def say(message)
    super
  end
end

Child.new.say("Child saying nothing") => ArgumentError (wrong number of arguments (given 1, expected 0))
```

So what's different here? 

The `Parent#say` method no longer accepts a parameter, much like the first `Parent#say` did. So then when I call the `Child#say` method with an argument (just the same as I did in the implicit argument section with success) the result is an `ArgumentError`. 

So what happened was still a passing of the implicit argument; that is, the argument in the `Child#say` was passed tot he `Parent#say`. But that's what caused the `ArgumentError`...because there was no expectation for any argument/parameter in the `Parent#say`...and so that's why Ruby threw the error. 

So then this begs the question: How do I avoid the error? 

Well, this entire section of typing I'm doing is being thrust forward in response to the `super` keyword....because it's the call to `super` in the `Child` class `Child` method that instigated the `ArgumentError`. So the way to avoid this issue is to call `super` with an empty paraentheses. like so: 

```ruby
super()
```

easy enough. 

What  will do is essentially "yield" and run the `Parent#say` method at this time...but since no arguments are expected, and the call to `super` is actually `super()`, what ends up being returned (at leat for this `super()` call) is the value of the `Parent#say` method. 

#### `super` with blocks

So, before I move forward, I know what a `super` call is, and I also know what blocks are...I'm going to guess that this is like one of those more complext method calls, and that what's happeneing is I'll be using the curly braces like: 

```ruby

super(this_parameter) { |x| "here it is: #{x}" }

```

Though that's just my superficial guess. 

Back to the article: 

> Let's redefine the `Parent#say` method by adding the `yield` keyword in it

Alright, so this is a good thing, because I do sort of know what the `yield` keyword is good for, but I don't really know what it's good for. 

And now I'm thinking again about building a `rails` website. And how it would be good for me. And maybe good for someone else. But I already have a lot of the side work done, with one of my websites. Let me see if I can find it. Yeah, so it's the blog title dump and chase. But that's corny. So something simple: Another Rails blog
