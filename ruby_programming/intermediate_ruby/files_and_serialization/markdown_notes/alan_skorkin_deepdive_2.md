#deep dive #2

...this is a continuation from [3_alan_skorkin_deepdive.md]()...I'm just starting fresh now becuase that file was hitting the 4k word count....

So now, after I've run the `my_serialized_thing = YAML::dump(test_hash)` method, I have a serialized object, in the form of `YAML`....that's being stored in `my_serialized_thing`....

The only other thing to do at this point is to create a new file. 

So if I were running a program, and saving from that program, I'd wnat to prompt the user for some input, and then I woudl accept that input as the file_name, and I would create a file, like so: 

```ruby
new_file = File.open('the_bling.yaml', 'w+')
```

but maybe I should change this syntax a little to represent the steps I just said I'd do: 

```ruby
file_name_from_user = gets.chomp.downcase

new_file = File.open("#{file_name_from_user}.yaml", "w+")
```

So now I have a new `File` object, and it just created a File with the name of the input from the user, and I should probably do a little more scrubbing of the input...but that's beside the point right now...Next thing I want to do is....get the `yaml` data into the file...

and how woul dI do that? 

Well to `puts` data to the new file I just created, I can revert to the knowledge I have been learning about...and there isn't actually any new thing I really need to do...because what I'm doing is: 

I'm swapping out one file for another....from the perspective of the `IO` of a system. So instead of `puts`-ing to the file of the `STDOUT`, I'm going to `puts` to the new file I just created...

so like this: 

```ruby
new_file.puts my_serialized_thing
```

seriously, that's it. 

So, yeah. Not really much to it. But now I have a little bit of a better understanding of turning something to YAML and then getting it to a file, from within my program. So that sort of makes sense. 

I guess...my next question still stands...what's doing on with the other side of the transaction? Loading a game? But really...what else? I mean, I saw what Robert was doing, and what I saw ther was....he was doing something a little too fragile...and that was actually taking the information and doing something like, reading it line by line....

And reading it differently would have a bad effect. 

But what I wnt to do is actually, set the actual instance varaibles by loading in the game. 

I guess I still don't know...how to practice this. 

But I sort of am already practicing this wiht my practice file in VScode right now...

Maybe the thing to do now is try to create a different file...and name it something else, and add different infroamtion to it. And then try to load one file....

Ok...so yeah, that's getting a little far ahead of myself. For now just try to do the thing where I attempt to creat a second file...

Ok, so now I have two files...each with something different for the value of the instance variable...

So...I guess the next thing I need to know how to do is to grab something from a `YAML` file, and go from there....

And I actually think that imght be then ext part of the assignment...or the article I'm reading. 

Aha! Ther it is!

```ruby
puts YAML::load(serialized_object)
```

but here's my question: 

1. What if the thing I want to `YAML::load` is a file? 

Well, smartypants...I can pull it in to the program, can't I, with `File.open`? 

Try that....hmm...ok, so this works within one program...but how about ending and storing the information, and then accessing it again? 

I mean, it's not necessarily making much sense. But I guess I don't know what Im' really trying to do. 

Well...I guess I do know what I was trying to do...I was trying to set the instance variable for a class to be the value of the saved/serialized object...

So yeah, there's still somethign in this article thats missing...there's still somethign it's not covering. So I'm not going to stress to much, because I don't think the article is covering the thing I'm looking for. 

So that means it's probably in a diferent artilce i"ll be looking at. 

Move along, instead of getting hung up on this idea. 

# A 3rd Party Alternative

So Instead of looking more at JSON, I'm going to go to a different article, and review what it says about YAmL...and then come back to this article for the JSON...

Ok, so something tells me I have to actually break down this article...because I've already done some skimming at it's been a little helpful up tot his point, so why don't I actually dig into the article? 

# From the "choosing the right serialization method"

>when saving or communicating some kind of information...

"communicating"...i think is like the idea of sending information via an API...because that's how Ive seen data be transmitted before...so "communication" is an acronym for "transmission"...

From the article: 

>Serialization takes a Ruby object and converts it inot a string of bytes and vice versa.

>Then, at the other end, the receiver has to unserialize the object, converting it back into something that Ruby can understand.

Yes! This is what I don't get? How can I work with the data that has been serialized, after it has been unserialized? 

## YAML
So the example this article starts with...is a YAML file. And...

Ok, I just spent like 5 - 10 minutes working out how to get the instance variable out of an object that I've imported in via YAML...but I still am unsure...I mean, I have access to it...but...I stil ahve some questions. 

Like, If I am importing....what do I do? 

I mean...how do I assign values to the instance variables and then start the game algorithm? 

Well, after I load or read the File that has the Serialized information, I could then assign the `@temp` variable to 

```ruby
temp = my_imported_file.temp
```

like that...maybe. 

And if I had more than one instance variable, I could do the same thing...

So, I think that I've begun to get closer to understanding this serialization...or rather, I think what I need to understand is the de-serializiation...and that will make a difference. 

so, if I create an object...

```ruby
class ThisObject
  attr_accessor :count
  
  def initialize(count)
    @count = count
  end
end
```

...and then I create an instance of that object...

```ruby
my_instance_of = ThisObject.new(44)
```

Then I know that I can access the instance variable of `@count` by doing

```ruby
my_instance_of.count
#=> 44
```

And then if I serialize this object...

```ruby
serialized_instance = YAML.dump(my_instance_of)
```

...and write it to a file...
	
```ruby
my_file = File.open('a_new_file.yaml', 'w+')
my_file.puts serialized_instance
```

then I have a serialized object in the `a_new_file.yaml`.

Now, if I de-serialize the object back into a program:

```ruby
deserialized = YAML.load File.read('a_new_file.yaml')
```

then I'll be able to call the `@count` instance variable on `deserialized object`...

```ruby
deserialized.count
#=> 44
```

And that's a complete cycle of serialization, then to a file, and then from a file into a program, deserialization and then access of the instance variable. 

And yeah, that's that. 

So then I could either keep looking at the `YAML` class in the second article, or I can review the `JSON` section of the first article, and then also the "Binary serialization". 

And I'd rather complete the article, rather than keep moving forard with 2...

## A 3rd party alternative
So, this article or this section of the article is about `JSON` so I know generally what the topic is about...

>...if we don't want to resort to tricks...

So, what tricks is he talking about? 

So...i think this conversation has to go all the way back to the section when the author is discussing the act of serialization on a macro level...or a more standard sort of approach to serialization. Because, for the sake of example the author illustrated the idea of serialization with a single instance of a single class...right? 

Well, truthfully the author used an example that was the serialization of a single instance of the `C` class, that included a single instance of the `A` and `B` class. So truthfully it was an example fo three classes, but it was actually only the serialization of one instance of a class. 

So I guess there's some confusion around this idea. 

Does the author serialize one class, or three classes? 

Well, if I'm truthful, the author is only serializing a single instance of one class. 

It is more "happen-stance" that the single instance of the `C` class is composed of instances of two other classes. But that's not necessarily indicative of the behavior of the actual serialization. Because that's what this article is about; and that's what I'm attempting to appreciate...this idea of serialization. 

And the thing that's being serialized is an instance of a class. 

So, I don't really know what it is I'm attempting to do....I mean, really what I think I'm doing is trying to understand what happens when I am serializing a single object that is actually composed of 2 other objects....But what is it I'm trying to achieve? I'm trying to prove something...but I just don't know what it is. 

So where is my confusion? What about this idea am I struggling with? 

Well, I'm serializing a single object...and that's an instance of the `C` object...but I know that when I "dump" the object into `YAML`...that I'm "serializing" the data...into the `YAML` form...but what aobut that si confusing or difficult for me? 

What about it am I not understanding? 

I think what I want to know is....what does the "yamlized" stuff look like? 

If I serialize a string, what happens?   
IF I serialize an Array, what happens?   
If I serialize a Hash, what happens?  
Because a simple 'string' is an instance of the `String` class...

because I think what I'm not learning or what I'm not seeing...is the separation between 'serialization' and the creation of a file that contains the data. 

Becuase I can actually work in YAML without creating a file. 

Ok, so converting a string to YAML is done like this: 

```ruby
require 'yaml'

test_string = "this is a test"

puts YAML.dump test_string
```

And this will output

```ruby
--- this is a test
=> nil
```

but the actual object returns this: 

```ruby
YAML.dump test_string
=> "--- this is a test\n"
```

So converting a `String` instance to `YAML` will create a string that is actually `YAML`...

I mean, the first thing will simply be denoted with triple dashes, and end with a newline. 

Ok, then lets test an `Array`....

so, this is how YAML will behave in this situation...

```ruby
"---\n- one\n- two\n- three\n- four\n- five\n"
```

So, `YAML`  will do different thiings in different situation...depending on the *type* of object that is being serialized...

Next...let's take a look at a `Hash`...

Ok, so now I know the behavior of `YAML` when it's serializing a String, an Array and a Hash. 

What about a custom object? 

Well, here we go: 

```ruby
class HockeyPlayer
  attr_accessor :goals
  
  def initialize(goals)
  @goals = goals
  end  
end

shooter = HockeyPlayer.new(0)

YAML.dump shooter
=>"--- !ruby/object:HockeyPlayer\ngoals: 100\n" 
```

But this is a little easier to grasp if I "puts" it...


```ruby
--- !ruby/object:HockeyPlayer
goals: 100
=> nil
```

So, for a custom object, what `YAML` will do is...

```ruby
--- !ruby/object:HockeyPlayer
```

`YAML` will place an exclamation point and then the name of the language, a slash, and then the actual word "object" followed by a colon and then the actual name of the customized class followed by a new line....

Then `YAML` will list the instance variables, a colon, and the value of the instance variable.

```ruby
goals: 100
=> nil
```

And that's how `YAML` will display a customized class. 

So now that I know how `YAML` will display a customized class, I wonder what I can make of the example from the article. 

But before I do that, I want to acknowledge that I'd like to attempt to run a game with a single pre-determined instance variable. 

So this includes me knowing how to intantiate the game without a pre-determined instance variable. 

And then it requires me to instantiate a game with a single pre-determined instance variable. 

I feel like that might be the way to "loading" a game...

Then it's a matter of turning that pre-determined instance variable into the de-serialized data. 

So, yeah....I have a lot to do. But I've already turned the `Game#play` variable into something that I can customize. So then, the next thing I want to do is Save the game, and serialize just the "solution"....or the `@solution`....

And see, this is kind of why I"m dragging my feet....there are a lot of small steps that are complicated. 

But this is a good thing. This means there's a lot to do, and many ways for me to flex that I actually know what I'm doing. 

And I can still compartmentalize many things. 

So....then what's next? 

If I want to save, I need to: 

1. save a File (for now, don't worry about creating a custom name...just force the File into a file name of my choice and hard code it. 

Ok, adding the file was remarkably easy. 

```ruby
saved_game = File.new('saved_game.yaml', 'w+')
```

Now, I could either change it's name...or I could....take the solution, nad make it the name...

Ok, awesome...I now have the file, and it'll be a different name everytime I save the game. 

Next thing...is to put something into that file....

Well....now I have a whole new set of circumstances to work with. 

I now have data in the file....and now I need to create a way to load a game.....whoa. This is a whole new thing for me...

Ok, so just a little at a time, is all I really need to do. But there are a lot of small parts...

so then, where am I in this lesson? 

I feel alive...

Ok, so I have a 	yaml file. Now, what I'd like to be able to do is load it on command. 

So what I need to do is give myself the option to load a game...

Ok...so I'm doing a lot of small things to the program...and I feel like I should probably be doing these things on a branch. It's like a sense that I'm getting. So I'm going to do that. After I make a point of identifying just what my master branch can currently do. I may even undo some of what I've done. 

Ok, so I did two small things...

1. I updated the "Game#introduction" method to include a third option: 

a. (p)lay new game  
b. (i)nstructions  
c. (l)oad saved game  

And that's what I did. 

Then, I changed the `Game#user_choice` method to validate user input that was equal to a lower case "l"....

but then I backed out those two changes, because I want to do those things on a new branch....since there are a lot of things that need to be done. So I'm going to do that now. 


Ok, so this is actually really complicated...but I can keep this straight. Just do a little at a time, and realize what it is I'm doing. 

## on the `loading` branch
So now that I'm on a new branch...I want to keep focus on what it is I'm doing. And I want to be sure to take copious notes. And maybe that's what's taken me off course a little bit...aside from the illness....but taking more and more notes, helps to drive my focus. 

So now I have a new branch, and I decided to name the branch `loading` because that's what I want to focus on now. And it seems appropriate. So, I sort of want to have an idea of when I'll merge the branch back into the master. And so, if I'm able to load a YAML file back into the game when the `(l)` button is pushed in the `Game#introduction` method (or rahter, I think when the `(l)` button is pushed as the `user_input` from the `Game#user_input` method. (I think one of these might be a good candidate for a private method, but I'm not sure right now). 

So any way...what I wnat to do is I want to give the user who's starting the program the option to load a saved game. 

So the best place for me to do that would be at the beginning of the game. 

Because I currently give the player the option to either: 

1. (p)lay the game, or
2. (i)nstructions  

And I present those two options to the user in a call to the `Game#introduction`. And the `Game#introduction` is called from within the `Game#play` method....

Ah..ok. so this is where things get a little weird...in terms of loading a game...

Because I feel like, I have too much packaged together. 

what I need to do is de-couple some methods. 

So what do I want to do? 

I mean, I've come across a problem. And I want to articulate what the problem is.

I'm attempting to give the user a choice...to load a saved game. 

Now currently, the only thing my saved game has is the "solution" in a `yaml` file....which is totally fine....

however, when I prompt the user for their choice regarding loading a saved game....I'm doing it via the `Game#introduction` method...from within the `Game#play` method. 

I've started down the path of "Loading" a saved game, by givin the `Gmae#play` method the ability to accept a parameter...but if I've already started the `Game#play` method to run the `Game#introduction` method...then I've already gone past the point of providing a parameter to the `Game#play` method. 

so my brain is giving me a couple of options; 

1. De-couple the `Game#introduction` method from the `Game#play` method
2. Re-set the `@solution.value` in the event that a game is supposed to be loaded

there may be other things I could do..but these are the only things my brain is offering to me now.

So why is this an issue? 

Well, because if I need to assign a different value to the `@solution` variable....then I need a way to get the information from the loaded file at this point, and then pass it to the `@solution` variable...but i've already created a new Solution. 

so the way the program is now...is a little sloppy....because there is no reason for me to set a solution if I'm going to be loading a game.

so then there's a couple of things I could do....

I could couple the actions of the four possible choices...because the output of the `Game#user_choice` method has become something new. 

so what were the options of the `Game#user_choice` method? or rather, what are the options now? 

```ruby
user_choice == "p" ? display_board : display_instructions
```

so, this is a really, really lazy way to do it. 

and as it turns out, I actually do need to do a little bit more. And this would actually go a long way to giving me the options that I need. 

So, what I need to do is actually destroy this ternary operator, and replace it with a case statement, perhaps. 

Now what would be a good thingn to do? 

I think I want to create some tests for this, because I haven't created any tests recently, and I know there is some additional behavior. 

So what am I testing thought? I need to test the output of the `Game#user_choice` method. 

So what I'm going to do now is go to the test suite, and run it, and see what I have for the `Game#user_choice` method...

And of course, I have tons of errors in this spec file. So now my effort turns to maintaining my test files. which is totally fine with me, because I know what i'm doing and why I'm doing it. 

Ok, so the first error is a lack of access in the `$LOADPATH` to the dictionary.txt file. 

so then, how do I load a specific file into a test suite for use? 

Ok...so i'm finding that my understanding of the RSpec is actually pretty flimsy..but I knew that. So I get to attempt to maintain the test suite, for the sake of building out the rest of the game. I mean, this is a worthwhile exercise. 

so, I don't know if my progress is taking me more towards RSpec now...or more towards....well, it feels like my progress is taking more towards overall maintenance, and focus on developing good software. Which is something that is very valuable, and will continue to make me valuable as I grow. 

So I want to continue to articulate what's happening.


My RSpec uite is failing for the `Game` class...because there are a lot of dependencies on things that are a little more complicated. 

So I want to continue to struggle with this...because there are some important ideas in here that'll definitely benefit me to grasp...


So the `Game#take_a_turn` method is currently breaking my test suite for the `Gmae` class..

And it's the first unit test that is fucking things up...

And the first unit test is fucking things up because....

A `Game` instance is being created and then the `Game#take_a_turn` method is being called. and I'm passing in the letter `a`...

And my expectation is: 

for the `Game@letter` instance variable to eq('a')

but I'm receiving the error that 

```ruby
input ||= gets.chomp.upcase
```

has a no method error of `chomp` for a Nil class object. 

So this leads me to believe that the eror is due to a loop somewhere. 

so in my `Game#take_a_turn` method...do I ahve a loop working? 

And now...I think it's because I've uncommented the loop to permit saving....so I'm goign to comment out...and again...I want to acknowledge, since i've swtiched from working on the actual feature of "loading" i've reverted to the master branch...

Now that I've uncommented the loop that is meant for saving the game...I want to re run my test and see if it still fails...

And it does fail...but this time for a different reason. 

so this is progress. 

so essentially what I'm doing now is backtracking a little bit. 

I definitely have a working program, and it sort of kicks ass...but what I'm doing now...is backtracking...to make the program more than just awesome...but awesome on a whole other level of cleanliness and organization. 

#Cleanliness is next to Godliness....

Ok, so now what? 

Alright, so here's what I did...

I was running the `Game_spec.rb` file...and I was experiencing some failures with the `Game#take_a_turn` method. 

It turns out, I had not setup the optional parameter for the `Game#take_a_turn` method very well...and was not using the optional parameter correctly in the method. 

So now, I have the test suite working...but does the game still work? 

nope. It doesn't work....

And why doesn't it work? 

What is breaking in the game? 

the game is not accepting any input to be valid....

So something within my `Game#take_a_turn` method is now broken...

Ok, so this logic is actually really jacked up...so I need to take a closer look at it...and re-factor it as necessary...


Ok...so there's a lot of issues here...so I need to take a closer look at this...

It seems the issue might have been smaller than I wa expecting. I needed to 'upcase' my input letter. 

But now...how does the test suite behave? 

Ok, so my test suite breaks.

so now how do I get these two things to marry? 

So what is th eissue i'm experiencing? 

The issue is....my test suite is failing, because it's attempting to define the `input` variable using `gets.chomp.downcase`...when My intention is to use the parameter for the value of input. 

Ok, so this is taking a tremendous amount of mental capacity...and I really like it...because I need to sort out what is happening here. So I'll go after it. 

Alright, well now I'm onto something else. 

I think I need to scrap these tests...and build new ones. Because the game is working...but I need to back out to the game. 

I mean..I think that ideally, the tests, when written, are capable to withstand some changing to the actual code..as long as the behavior of the methods remains consistent. 

And I think that's where the idea of test writing becomes a usable skill. Is knowing "how" to write a strong test...a test that won't break when the code changes, or the amount of errors are minimized...because I do need to look at the test suite, and maybe re-write or get rid of the existing tests...because they're wrong...and the program works....And I might be served by spending more time with writing tests for the working program....

So...what am I going to do?

I think I'll trash those scant tests I have...and try something else. I'll try to write a couple of other tests for some of the methods in the game....

Or maybe start from where I need to start. 

ok, I've gotten rid of the tests in the `Game` class spec file. 

NOw, I suppose I could go back to the actual class and start sriting tesets for the different classes taht are there...but that's not what brought me here. 

what brought me here was a need to write different tests...but for what? 

So, as I look at the `Game#take_a_turn` method, I think about the logic that I ahve there, and the organization of the statemens and expressions there within...

So I am attempting to do some other things in this game...

I remember I was looking at the `Game#take_a_turn` method...

And why was I looking at the `Game#take_a_turn` method? 

Well, what I'm attempting to do is I'm attempting to compartmentalize some of the game...

So now..that I'm looking at the `Game#play` method...I'm noticing some things...

Like: 

1. Why is a solution set, before the introduction? 

I feel like the first thing that should happen when a game is instantiated...or when a `Game` begins to be played, that the introduction should happen. 

But should an introduction take place...separate from the playing of the game? 

I mean, this just makes common sense. 

So the idea is...I could simplify the `Game#play` method...by removing the call to `Game#introduction`...

Well...it's ot quite so simple...but I want to just start doing small things, that'll break the game...because that'll show me how I have to fix the game...

Wow...so I just commented out the `Game#introduction`...and it's such a small method, but it's so vitally important. 

so then, what if I were to hop over to the `run_this_file.rb` file and call the introduuction there?

Ok, so it doesn't break it that much. In fact, it makes it a little neater.

Wow. So maybe, by doing this, I'm actually improving my code. 

I don't know what, but it feels that way now. And i'm getting close to 4500 words. I feel like I should create a new file. 

