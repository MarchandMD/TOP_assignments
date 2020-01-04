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
