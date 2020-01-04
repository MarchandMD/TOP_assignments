this is a mastermind program built in a single file, in collaboration with [rSuazo](https://github.com/rsuazo)

## step 1: initialize RSpec
in the command line, I ran: 

```
rspec --init
```

note: when initializing rspec, apparently I need a double-flag... which is different than initializing git, which requires no flags....

## step 2: created the main `.rb` file

I made a `main.rb` file in the `/mastermind_with_rsuazo` directory...

## step 3: created the `Game` class in `main.rb`

```ruby
#/mastermind_with_rsuazo/main.rb
class Game
end
```
## step 4: panic, LOL

So, I don't really know what we've already done, so I don't really know how I want to initiate an instance of the `Game`. I just know that I do. 

So then my next question is: 

>What do I want to the `Game` class instance to do? 

And that seems to be an obvious answer: 

> I want the instance of the `Game` class to be called in Ruby...and then run the entire game.

So what this means is...in my `main.rb` file, what I'd like to do at the end of the program is this: 

```ruby
instance_of_the_game_class = Game.new
instance_of_the_game_class
```
and the implication is that the `instance_of_the_game_class` will then "do" everything else. 

So then, I guess the next thing I'm going to do is...write those two lines in `main.rb`

```ruby
#/mastermind_with_rsuazo/main.rb
class Game
end

instance_of_game_class = Game.new
instance_of_game_class
```
So now, what I can do is run `ruby main.rb` in the terminal....

Do that now

Nothing happens...

Seriously though, that's a good thing. It means everything is setup appropriately, and nothing is failing at this point. So then what? 

# step 5: stop panicing, and start coding and/or testing
Well, now that I know that I've gotten this far, I can start thinking about how to actually build the program. I may want to work with RSpec...but right now, I'm alright with just building this program, and then only using RSpec as I need to. 

so then the question is: 

> What do I want the game to do, specifically? 

And of course the question was easy to answer before I added that last word: **specifically**

The easy answer is: I want the game to welcome the player to the game, and I want to give some instructions on how to play the game. 

But that's not really fun. It's prosaic. But it is a necessary part of the game. 

So I start to think about how the game is played. Or how to get myself as a player, completely into the game. So what I'm thinking about is like this: 

>I, as a human, am just sitting in this chair, and I've opened a computer, and opened the terminal application. I ran the code `ruby main.rb` and now something else needs to happen.

How will I **as the creator/designer/builder of this program** bring that human from their position of non-engagement with the program, to complete engagement with the program?

Well, what is the program? 

The program is the Mastermind game. 

And how do I play the game? 

Well, a player choses to either make the code, or break the code. 

### Aha! something to do!

I need to prompt the user right away if they'd like to make the code or break the code. So I need some input from the user. I know how to do that. I use a `gets` method...

..but wait. How do I do this in the context of the `Game` class? 

Well, I need to "do" something....I need to get some input from the user. So then, speaking from the perspective of Object-oriented design, I need to create a "behavior". And I've already seen, numerous times (because I'm doing a lot of reading and note-taking, and i've read a lot of articles and books....right?)...that in OOP...a verb is an action, is a function, is a method...is something I can create. 

So there, I think I just answered my own question. 

I get input from the user, by writing a method in the `Game` class. 

```ruby
#mastermind_with_rsuazo
class Game

  def get_input
  end

end

game_instance = Game.new
game_instance
```
Awesome. Progress. 

so what happens if I run this? Nothing, obviously. 

So then, what? 