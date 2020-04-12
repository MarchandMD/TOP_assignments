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

Back to the article. 

> Let's redefine the `Parent#say` method by adding the `yield` keyword in it

```ruby
class Parent
  def say
    yield
  end
end

class Child
  def say
    super
  end
end

Child.new.say { p 'Hi! Glad to know you Parent!' }
#=> 'Hi! Glad to know you Parent!'
```

So, before I go to the article for an explanation, I see that I'm calling the `Child.new.say` method. I'm also passing a block to it. So somewhere there's a yield that's yielding to the block. 

the `yield` is in the `Parent class`. So the `Child#say` call is sending Ruby to the `Parent.say` call, and the `yield` in the `Parent#say` is sending Ruby to the block. 

Now to confirm that with the article. 

So this was "super" easy to understand. (I couldn't resist)

# `Super` with ancestor chain

> Let's make the `Parent` class inherit from the `GrandParent` class

I don't think I wnat to continue on with this rgith now, because I think I understand the `super` keyword. Let me go back tot he StackExchange article that i'm ripping apart.

right, ok, so I was buiding the `Pawn` class, and I saw the existence of the `super` keyword..and I saw the existence of `Pawn@color`. So, if I want to have some control over the `Parent` class method, and I want to pass some argument/parameter to it, I can do that by using the `Child` class. 

So then I want to konw exactly what the `Piece#color` method is doing by default, so I can understand what the `Child#piece` is sending to it. 

```ruby
class Piece
  attr_accessor :color, :unicode, :position

  def initialize(color, position = nil)
    @color = color
    @position = position
  end
end
```

By being a `Child` of `Piece`, the creation of a `Pawn` (which requires an argument equal to a color) will associate the color to the `@color` instance variable. That's all. 

So then I have a question about the rest of the `Pawn#initialize` method: What is the `#initialize` method doing with the `when` statement? 

I mean, I know at a "mechanical" level it's applying a unicode value for black or white to the `@unicode` instance variable...but how is it doing that? 

And I think this is where the "Child < Parent" relationship is relevant. Because the `Pawn` instance will have access to the `@unicode` instance variable, and is able to set the `Piece@unicode` instance variable from within the `Pawn` class, because it is a `Child` of the `Piece` class. Makes perfect sense. 

# 4/11/2020
First action of the day was an attempt to `git push origin master` and was rejected because of some changes on the remote that I don't have locally. 

So, I don't really care about whatever changes there are however, I want to get better at managing these conflicts, and I'm not at all able to right now. I know that git fetch will pull in the changes, but not merge them. So why don't I try that and see what happens. Or at least read a little bit about that. Because that's one of the next things I want to be able to do. Or at least I know it's another skill. Yeah, it's not exactly what I was planning on doing, but it's worthwhile to do at least once...

Ok, so what I did was I attempted to `git fetch`...but I'm not sure I did it properly. Because there were no branches taht were created. So since this is kind of a side skill I want, Im going to go to the article, with this last minute here, and will spend more time, because I want to spend more time with the actual tutorial. I do enjoy being on a timer....I always have. 

##  `def get_valid_moves`
So this is the method I'm copying now. I'm going to write a little bit more about it, because at this point all im doing is copying and pasting, and there's a lot to copy paste. I mean, i'm not copying/pasting, I'm actually typing it, which keeps my brain thinking about what it is I'm typing. 

Ok, time out...and time in

So, this method, whenever it's called, where ever it's called, will get the valid moves for a piece. So, why would I want to have all this stored in the program? 

Thinking about it now, if I select a piece and I opt to move it somewhere, one way to be able to quickly determine if a move is valid, is to have a list of all the valid moves. Then, if I compare the move a user is attempting to make with the list of valid moves, it's fairly easy to update the board/score/alternate turns, etc, because the move is a valid move. So it's a way for the program to have, for any given piece, a list of the valid moves depending on it's current location, piece type, and context of the game. So what appears to be happening is...well I'm not sure. But I've had to begin thinking about this. One thing I don't know is if white starts at the top of the board, or the bottom of the board. That is, at the beginning of the `Board` array, or at the end of the `Board` array. And I'm assuming `Board` is an array, which it most likely is. I'm not sure how else the `Board` would be written; So, if the White pieces are traditionally placed, they'd be on the bottom of the screen, or the end of the `Board` array. And so if I were to move...a piece...ok, multi-dimensional arrays are giving me fits. I'm going to spend some time re-freshing on those.

### multi-dimensional arrays

The first place I'm going to go is that TicTaToe tutorial, because I understood that once, and I want to refresh there. 

The grid for a board is an Array, with nested Arrays within it. so like this: 

```ruby
fruits = [
           ["apple", "red"],
           ["banana", "yellow"], 
           ["grape", "green"]
          ]
```
What I'm really struggling with is the coordinate system that's used for this. Coordinate systems are usually (x,y), and originate from the lower left. The nested array coordinate system originates in the upper left, and is expressed in terms of (y,x). 

This would make the value of "apple" look like: 

```ruby
fruits[0][0]
#=> "apple"
```
but that doesn't illustrate it for me. The value of "green" would be: 

```ruby
fruits[2][1]
#=> "green"
```

I'm goign to verify this in IRB now. Ok, that's it. So then it makes much more sense that the first coordinate is y and the second coordinate is x. 

So then extrapolating this to a chess board: 

```ruby
chess_board = [
  ['a8','b8','c8','d8','e8','f8','g8','h8'],
  ['a7','b7','c7','d7','e7','f7','g7','h7'],
  ['a6','b6','c6','d6','e6','f6','g6','h6'],
  ['a5','b5','c5','d5','e5','f5','g5','h5'],
  ['a4','b4','c4','d4','e4','f4','g4','h4'],
  ['a3','b3','c3','d3','e3','f3','g3','h3'],
  ['a2','b2','c2','d2','e2','f2','g2','h2'],
  ['a1','b1','c1','d1','e1','f1','g1','h1']
]
```

Ok, so I think I understand this a little better. The x and y coordinates are not explicitly needed for me to define within the cell of the game board, because those coordinates are available just as part of the normal programming language. I access elements of an array (and a nested array) using integers, and that's more or less straightforward, if not a little counter-intuitive. So yeah, it helps to practice some. And I can sort of teach myself how to identify things within it. 

I wonder though if I'm looking at the board correctly. Like, if I was the white pieces. I'm going to start a new game of chess against the computer to verify. 

Do I want to keep looking at this Chess game? Do I want to keep digging into it? Yes, I do. 

But I don't want to keep building up `Pawn` class right now. I want to switch to something else. 

# `class Square`

this seems to be an easy enough class to understand, but there's a little more going on. So i'm going to pick it apart, piece by piece. 

The `attr_accessor` methods are

```ruby
:piece_on_square
:x
:y
:coordinates
```

So, I wonder how `@piece_on_square` is used. I see that it's used in hte `Game` class...and you don't really get much higher level then the `Game` class, unless the author built another class to run the Game, which is entirely possible. It's something I've done. Just for the sake of being clean and neat and organzied. 

So then my curiousity took me to this question: How is the `@piece_on_square` instance variable/instance method being used in the `Game` class? and I saw that there is a call to `@piece_on_square` or maybe it's `#piece_on_square` by some other variable called `value`. And so my line of questioning wondered: how the hell does the `Game` class have access to the `@piece_on_sqsuare/#piece_on_square` method? And the answer to that is: whatever object is stored in the variable `value` must have instances of a `Square`...and what is a Square? Well, in this context, it's a square on a Chess board, so there must be a `Board` object that's being instantiated and used in the `Game` class. 

# 4/12/2020

If I just look at (not code) the `Game` class, I see that the only `attr_accessor` mehtod in this class is `:board`, which I can see in the contstructor method as being a `Board` class object. So after being an investigator for a couple of minutes, I see that the `Game` uses a `Board` and the `Board` most likely is a series of `Squares`. 

So I'm going to take a second to be critical here. The naming of the Array (because that's most likely what the board is going to be) elements as Squares seems a little strange to me. I mean, that's what they are, and it is actually really intuitive, maybe. But then again, is it intuitive or is it abstraction? I mean, a square is a geometric shape, so that's not all that intuitive. But it is a good enough name, and it actually is better than say something like Cell, or Space, or anything else. So maybe I'm not going to be critical here. 

