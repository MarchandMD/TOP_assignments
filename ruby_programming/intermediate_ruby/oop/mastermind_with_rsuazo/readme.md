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

Well, then I need to start populating the `#get_input` method with some Ruby code. 

Now, at this point, my brain has started to tell me a little bit more about something else in my code...specifically, the last two lines.

Just having an instance of the `Game` class won't really help me....I'll need to **do something** to the instance of the `Game` class to make something happen. 

And what is that **do something** that I'll need to do? 

I'll need to call a method on the instance of the `Game` class. 

But wait...I though i was already creating a method? the `#get_input` method...

That's right! We are. 

But what I'm thinking about, still, is making this program as easy as possible. Because i'm "lazy"...in the sense of a programmer. 

What do you mean? 

I mean...yes: I am writing a method `#get_input`...but what is that going to do? 

Well, that's going to get input from the user, asking if they want to "make the code or break the code"...

Exactly. But to make the method work, i'll need to **call the method**....

I also know that I'll most likely have more than one method in the class...and how will I make those other methods work? 
Ummm....

By **calling the method**. If I make a method, I'll need to call a method. 

But I don't want to have to call every method every time. 

So what I'm thinking about, is a second method...

BUT WAIT! you haven't even written the body of the first `#get_input` method! Why the heck are you already thinking about a second method?! this is so confusing. 

It may be confusing, but it's programming. It's not easy. Well, it's not difficult, but it's not easy either. It just..is..

Ok dude, whatever. Just build. 

You got it! :)

# step 6: stop your brain from going to fast, and focus on the `#get_input` method...

So, instead of worrying about the second method that I started thinking about, I'm going to focus on the `#get_input` method..

Oh thank god! I was starting to get discouraged!

```ruby
def get_input
  puts "Would you like to (m)ake the code or (b)reak the code?"
end
```
So, for getting user input, i've learned that

#### Less is More

Now don't get me wrong, I think that humans are great things, and we have a lot to contribute...but when it comes to a simple computer program...I want to exert as much control as I can, because I want to make things easier for myself. I do this by being specific about what the user can provide to the program. I really like the `(m)ake` sort of style of prompts...I feel like it's an elegant way to let the user know: "these are your choices". 

At this point in the development, I also know that I need to get input from the user. But my brain, since it likes to find problems were they don't exist, is already thinking about...

**Hey wait!!** What if the user types something besides 'b' or 'm'?!

Impetuous, you are. I was just going to say: My brain is thinking about the problem if the user types something besides a 'b' or an 'm'...I need to "validate" the input. And I don't want to have to call the method everytime I need input from the user. So i'll create a validation loop (I don't know if that's an actual thing)

Now stay with me, because I'm going to add what looks like a lot of code...but it's really no more than an `if-else` statement inside of a `loop`...at this point in the curriculum, this sort of thing shouldn't scare you. If it does, you might be going to fast, and may need to slow down a little bit. Or keep pushing forward. It's your call...

```ruby
def get_input
    puts "Would you like to (m)ake the code or (b)reak the code?"
    loop do
      input = gets.chomp.downcase
      if input == "m"
        puts "you will make the code"
        # will change this later
        break
      elsif input == "b"
        puts "you will break the code"
        # will change this later
        break
      else
        puts "invalid entry; only (m) or (b) are valid entries"
      end
    end
  end
```

So this seems complete. But now, I want to test this method. 

## Testing (the hard way) in terminal

Slow your brain down, and test the program in `irb`..

Oh man. `irb`?! I hardly know what that is. 

That's ok...it's short for: interactive ruby shell...or something like that. I'm no expert. Maybe just 'interactive ruby'...

But what is it? 

It's a way to emulate (or pretend taht you are) inside a Ruby engine.

What the heck is a Ruby engine? 

It's a program that allows a Ruby script to be run. Go back to sleep....

IRB essentially is the RUBY ENGINE, running super slowly. When the say a computer program is capable of doing this super fast...the Engine is the thing that's doing the computing. Maybe. Sort of, I don't really know. That's just how I've been thinking about it while I use it, and it seems to help me. 

so to test this `Game#get_input` method the hard way, I run irb

```
irb
irb(main):001:0> 
```

So, since I launched IRB from the same working directory that I'm building in, I can `require_relative`...because I'm essentially  **IN A RUBY SCRIPT WHEN I'M IN IRB**...

```
irb(main):001:0> require_relative 'main'
=> true
```

Hey, why didn't you include the `.rb`? 

Because I didn't have to that's why. 

Why not? 

That's a good question! I mean, that's a good question for some situations, like: Why not try something new? Why not try a different emotion? Why not break this cycle? Why not eat healthier? Why not think for myself? 

but in other situations, this is a shitty question.  

What I'm getting at is: sometimes there are good questions to ask, and sometimes there are bad questions to ask. Here's a nice little saying I'd like to invoke at this time: 

> never ask a question you don't already know the answer to

or

> try to answer your own question, before asking it aloud

So, maybe the reason I didn't include the `.rb` in the `require_relative` call, was because in this situation it wasn't necessary. And I'll keep this in mind for future situations. Not the front of my mind, but the back of my mind. 

Got it. 

```
irb(main):002:0 > game = Game.new
=>#<Game:0x003fdgre554434345>
irb(main):003:0? game.get_input
Would you like to (m)ake the code or (b)reak the code? 
```

Ok, cool, so at this point, you should be able to test this method in the terminal, and be certain that it won't break. 

Yep! Awesome! Nice work! But...um...I have a question, and I'm a little timid because I don't know the answer to it...

that's ok! That means it's a good question!  

Ok: So, if this is testing "The hard way...." How do I test the "easy way"? 

Nice! I like "how" questions! There much easier to approach. 

