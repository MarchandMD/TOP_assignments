## Testing the Easy way, with RSpec

Ok, so, since I got sick of always running the entire script in the command line, and I got sick of running "IRB" everytime I needed to test something, I want a way to test individual parts of the program, without running the entire program everytime. 

Wait, I don't get that. What do you mean "individual parts of the program"? 

I mean....at this point, my program is becoming a little larger. There's a couple of methods...there's even talk of a method with other methods in it...and I'm having to run the entire program just to test one thing.  

Like, I have to run the entire program and run all the methods, just to test one new method. But I dont want to do that. 

Ummm, so you mean you can test just one method at a time? 

Exactly. 

How does that work?  

Well, let me show you how to setup RSpec with a single command in the command line, and then we'll start testing with RSpec.

### Getting started with RSpec
1. I'm not sure if this is necessary, but in the main directory, I should create a sub-directory called "lib" (short for library) and I should put my `main.rb` in there. 

2. Next, in the command line I should make sure I'm currently "in" the main directory... I can confirm that I am by typing "ls" in the command line, and I should see "lib/"

3. At this point, the next command will automatically initialize the project with RSpec: 

```
rspec --init
```

This will create one directory called 'spec/' and a file called `.rspec`. The `spec/` directory has a `spec_helper.rb` file in it.  


## slow your brain, and return to the `Game` class
Ok, so now, what do I know? 

I know that I can start a game by getting input from the user, and that I'm getting good input, either an `m` or a `b`.

Ok..then what? 

Well, then the game needs to go on....

Yeah...and....

ummmm, i'm not sure.

Yeah you are. You do know what needs to happen, we need to either: 

1. make the code, or 
2. break the code

yeah, but those are two very different things!  

That's ok! Let's think about them a little bit. 

Ok...but How do we get from the `#get_input` method to the "making" or "breaking" of the code? 

Hmm.....that's a strange question. 

So the two things are "connected"....there is a link between the `#get_input` method and the `making` or `breaking`....

...but before I go over that....I want to point something out: We've already started our next two methods.

#### What?! Two methods?! We just finished one! And we already "forgot" about a second one! Now you're talking about 2 more methods?! That's gonna mean we'll have 4 methods! I can't keep all this straight!

Again, slow your brain down.

### Stop saying that! 

Ok...but again, try to stop panicing. We're writing things. We're making things. We're sort of keeping it all togheter, but we're creating and writing, so we don't really need to keep it all together. The computer is storing things for us, and we simply get to revert back to what we've arleady written, and use the code we write to build more...  

I don't know that I follow, but I don't really know what the other two methods are that we now need to write, or have already started. 

I'll tell you, they're `make` and `break`.  Or as you should get used to seeing them: `#make` or `#break`... which is like a short hand for writing `Game#make` or `Game#break`...

Will you please explain how the `#get_input` method will be connected to the `#make` or `#break` method?  

Gladly! 

So, depending on the input from the user within the `#get_input` method, I can add more code...such as a call to a method, like `#make` or `#break`. And viola! The two methods are now "inter-twined"! I'm calling one method from within another method. 

But what about scope?  

What about it?  

Well, there's a thing called scope, and I know that it exists....

yeah..but what's your real question?  

Well, won't scope stop the method from running?  

Why would it do that? 

I don't know...because I know scope is a thing, and sometimes that's what it does....  

Ok...well, again, I feel like a brain will look for problems before they're problems. So until a thing is a problem, let's not fix non-existent problems. 

Ok. But I don't like your attitude at this point. You're a little condescending...  

Opinions..

## intermingling the `Game#make` and `Game#break` method with `Game#get_input` method

```ruby
def get_input
    puts "Would you like to (m)ake the code or (b)reak the code?"
    loop do
      input = gets.chomp.downcase
      if input == "m"
        puts "you will make the code"
        make_the_code # THIS IS WHAT I UPDATED!!!!
        break
      elsif input == "b"
        puts "you will break the code"
        break_the_code # THIS IS WHAT I UPDATED!!!!
        break
      else
        puts "invalid entry; only (m) or (b) are valid entries"
      end
    end
  end
```

Ok, yeah. But those methods don't exist yet!  

Well, they will...so I guess I want to thnk about now..which of those two do I want to build right now? 

### What it would take write the "make the code" method
If I make the code...I'd want to prompt the user for some input...like 4 colors, or for characters (four letters) that make up a secret code. 

But I've already done that. I've arleady gathered input from the user in the `#get_input` method..and I sort of already know how to do that. 

Besides, if I "make the code" right now...I'd then want to have the computer play the game...and that is what's considered AI...ARTIFICIAL INTELLIGENCE...which is a big topic. So I don't really want to ahve to create AI that'll try to guess my secret code. At least not right now. 

So then 

### what it would take to "break the code"

Well, if I were to write a method to "break" the code, I'd need to first ahve an existing code, then I'd need a way to play the game to actually solve the code, as the player. 

So I'd let the computer do the tough stuff of "choosing" a secret code (I put it in quotes, because it's important to remember...from a reality standpoint....that computers don't "choose"...at least not the computers I'm working with....but as the creator, I can setup things that mimic "choice" in the computer...)

Ok, then, so I'm going to focus on the `Game#break`  

## taking a deep breathe, and working on `Game#break_the_code`

So then...what do I want the `Game#break_the_code` method to do? 

Well, I want the `#break_the_code` method to: 

1. set a secret code
2. maybe some other stuff

I mean, at this point...I know that the `#break_the_code` method is starting to wade into more complicated ideas. Like, after I set the secret code..I'll need to do some other things. Like I'll need to get guesses from teh player to compare to the secret code, and then I'll need to compare those guesses against what the secret code is. 

then I'll also want to provide some sort of feedback. 

what would be dope is if I could create some sort of colorful interface in the terminal...because I've run some other peoples programs, and I got super jealous when I saw that people were able to get color into their terminal output. So that was exciting!

But this is an example of how a method can start to get big. Like, the direction of the game and design can start to drive itself. And I need to manage my own ability to think and project my brain into the future, and focus on one thing at a time. 

so now, what I'm focusing on is: 

1. Creating a secret code

And this is something that's been done. 

Now, I've started to think about something. a Secret code...is sort of an object. Like, it seems like it could be it's own object. Because I can think of it as beingn it's own "thing". Like, I feel like I probably could make it a class.....but I'm not going to. Not now. 

Now, I'm going to attempt to keep this as simple as possible....

So I need to make a `#set_the_secret_code`...

But before I do, i'm going to say something about "style"....

"Style" is what defines someone. What makes one person stand out from another. Awesome style is undeniable from anyone else. But it's subjective, usually. 

When I talk about "style" for programming though...there is definitely an agreed upon "style" for many parts of any language being used. 

Ruby is no different.

One of the agreed upon styles is using snake case for method names....and keeping the names succinct. 

so like `#set_the_secret_code` is one option...but so is `#set_code`, or maybe `#set_secret_code`.

## changing course

Now, I just realized something...I didn't like the path I was going. I wanted to make some more progress quickly. So what I did was, I created some attr_accessor methods. Specifically: 

in the `Game` class I added: 

```ruby
attr_accessor :colors, :secret_code
```

then I created a "constructor" method...

```ruby
def initialize
  @colors = %w[r o y g b i v]
  @secret_code = @colors.sample(4)
end
```

And I set two instance variables: 

1. `@colors` 
2. `@secret_code`

Why did I do this? 

Well, because I was sick of going so slow, and I wanted to make some serious progress. 

Now, when I create an instance of the `Game` class, I now have access to `@colors` which is an `Array`. then I set `@secret_code` by using the `Array` that is stored in the `@colors` instance variable, and calling `#sample` four times `@colors.sample(4)`. 

this requires having a working knowledge of `Array` methods. 

A working knowledge means: I know where to find the documentation for the different `Array` methods, and I know how to look them up. 

And I've used different methods before, andI know there are different things that methods can do. 

So if I want an object like an `Array` to do something, many times there is already a method that exists, and all have to do is find how to use the method by looking at the documentation. 

That's what "working knowledge" is....

## Now I have a secret code..just like that. Now what? 

Well, I still ahve the `#break_the_code` method...and I can do something else with it....but what? 

Well, why not use it to actually attempt to break the code? 

Get input from the user

I started to write `#break_the_code`

```ruby
  def break_the_code
    puts "enter your guess.\n"
    puts "your options are:\n"
    puts "(r)ed, (o)range, (y)ellow, (g)reen, (b)lue, (i)indigo, (v)iolet"
    loop do
      color_choices = gets.chomp.downcase
      break
    end
  end
```

I also starting writing another method, called `#validate`

```ruby
def validate(choices, possible_colors)
    choices.split('')
  end
```

because I want to take two arrays (represented here as the parameters) and validate the input.

actually, the `choices` parameter is going to be a string...because that's what `gets.chomp.downcase` will create...

so I had to do:

```ruby
choices.split('')
```

and that will turn a string into an array. 

Now what I want to do is compare the `Array` of `choices` to the `Array` of the `@secret_code`...

So who will I do that? 

Well, right now, I just want...what do I want to do? 

I want ot make sure that the choices of the user is a permissible entry. 

So then, the input of the `choices` parameter needs to be better prepped... so when I get the choices from the user, they're already "filtered" if you will, to make sure they're the right length, and if they're permissible letters. 

so like, I wnat to make sure all the elements in choices are letters from colors...

I know that what I want to do is something similar to this: 

I want to make sure a single element is in the `@colors` array. 

Then I want build that idea up to check every element in array. 

So the first hting I'm going to do is make sure I know how to do this for just one element. 

```ruby
@colors.include?(choices[0])
#=> true
```

Ok, cool.

so I do know how to do it for just one element. 

then how do I do this for several elements in an array? 

```ruby
i = 0
answers = []
while i < choices.length
  answers << colors.include?(choices[i])
  i += 1
end

```

Ok, so this is like a neat little for loop. but I could probably do this cleaner. 

 
So what am I doing? 

I'm trying to make sure that every letter the user enters is permissible...

so this is what my validate method has become: 

```ruby
def validate(choices, possible_colors)
    array_of_letters = choices.split('')
    i = 0
    answers = []
    while i < array_of_letters.length
      answers << colors.include?(array_of_letters[i])
      i += 1
    end
    puts answers.all?(true) ? "valid input" : "invalid input"
  end
```

Ok, so now, what I see is, I need to clean up my `#break_the_code` method...


So what am I trying to do? 

I think I'm doing a couple of different things, and I'm confusing myself. 	

So what I want to do is go a couple of steps back...

At this point what do I definitely have in the program? 

I can instantiate an instance of the `Game`...it has a `@secret_code` that I can work with.

Wow, ok...I actually have a lot mroe than I would have expected. 

I can call `Game#get_input` and it will do a couple of things. 

But I don't like the way it works.

It's too...interconnected. 

I want to employ the idea of **ENCAPSULATION** a little bit more. I want to compartmentalize things. 

I mean, I like the idea of the `#get_input` but that's not really what the method is doing. It's actually doing more than `#get_input`...it's running the entire game....

And this get's back to that idea of the original "second" method I was thinking about...

After I've instantiated an instance of the game, I only want to call one method....that will store other methods in it. 

So this is sort of like the Engine that will help keep things striaght in my own mind...

```ruby
def play
  prompt_user_to_make_or_break
end
```

Ok, now, I want to add another method to the `play` method...

```ruby
def play
  prompt_the_user_to_make_or_break
  break_the_code
end
```

so then if I call the play method...

one method is run, then the second method is run. 

But even if I chose to `m` the code during the `prompt_the_user_to_make_or_break`...what happens? 

Well, looking at the code for the `#play` method, I see that first the `#prompt_the_user_to_make_or_break` method will be called to completion. 

Then the `#break_the_code` method will be called to completion. 

so then my question is: 

How do I create some logic to control the flow of the code? 

How can I write a statement in the `#play` method that will sometimes call the `#break_the_code` method, and other times call something else? 

```ruby
def play
   prompt_the_user_to_make_or_break == "b" ? break_the_code : make_the_code
end
```

Ok, so then what the hell does this do? 

Well, test it, the hard way...

But I"m not going to, because I know what will happen. 

The `#break_the_code` method will run if I type in "b", ...

Umm...I want to accelerate my progress...

and there are other ways to follow along...so i'm going to focus on simply creating at this point....

ok, so now that I've setup RSpec..what do I want to do now? 

I want to focus on the `#play` method...


So, now, my logic works better..because I've setup the `#prompt_the_user_to_make_or_break` method to return a single character `String`...either a `b` or an `m`. If it returns a `b` i'll run the `#break_the_code` method. 

If it doesn't return a `b`...I'll just print something like "Make the code"...for now...

so, now that I have some logic built into the `#play` method...I could do something else....

so what am I trying to do? 

my `#break_the_code` method is way to big right now...

I need to shrink it down...


So I want the `#break_the_code` to do less...

I actually just want it to produce some input....

so yeah...I think I want to separate things as much as possible...I mean I can remove some of this from some of the rest of this...


Hmm, my RSpec isn't working properly. 


Ok, so now I got RSpec to work correctly...and it's so much easier to develop now....


because I have so much more control and feedbak from the program...

And I'm looking at my `#validate_guess` method...

And I don't think I like it...because I think I want the `#get_guess` method to do all the validation. I don't want there to be two pieces of validation. I want validation to happen all at once. 

Becasue what do I need to validate? 

1. if the input is 4 characters or not
2. if the input is 4 characters, are they all permissible characters? 

So that seems to set it up pretty well for me

either it's 4 characters or not...

so do that first...which I htink I already have, in teh `#get_guess` method...

Ok, so now I have a little bit of validation in the `#get_guess` method...but I need to add some more...

Because I'm not able to set the answer to reject non-4 character long answers....

So i'm back to this issue of finding out if all the characters of the input are valid charaters. So they're only valid characters if they are part of the `@colors` array...so 

```ruby
@colors = %w[r o y g b i v]
```

So i need a way to find out if every element of the string is in the `@colors` array...


So why is this such an issue for me? 

I think it's because I'm looking for a shortcut...and I don't think there is a shortcut.

I mean, I need this to be accurate...but I need to take the long way if I need to take the long way....

so I've been really hung up on it...

And I sort of want to look at my other code....

but if I created a method for this....

Ok, so I didn't actually create the method before...but I did now that there was a way to do it: 

```ruby
colors = %w[r o y g b i v]
guess = %w[r o y g]

guess.all? { |x| colors.include?(x) }
#=> true
```

So, this is waht I've been attempting to do for like, two days now...so this is what I've been looking for...so now..I need to incoroprate this into my code...

Ok, so the next piece of validation that needs to happen, is an elimination of duplicates. 

so then uniq.values must be 4...

# Now what?

Ok, so now I've implemented a certain amount of the program. Here's what I can do: 

1. ask to 'make or break the code'
2. make a secret code automatically
3. get input from the user until the guess the code correctly

NOw what else needs to happen? 

Well, there's still the other side of things: and that's the making of the code. 

But then there's still more to it...like, I don't really like the way the game "looks" or "feels" in the terminal. 

So I start to think about how to change that. 


so first thing I do is just run the ruby file, and I am critical...I'm as constructively criticaly of the interface as I can be....and the first thing I notice is...I'd like to add some additional space to the output...

Well, the next thing I think, is to start working on the logic of matching the code exactly. 

Because that's part of the game play: 

It's one thing to know that I have 4 correct colors. 

It's another thing to implement that into the game play. 

So the first thing is to make sure that I have four correct colors. the next thing is to determine if the colors are in the correct position or not. 

so what does that logic look like? Even before trying to code it? 

Well, so there's a secret code, and the secret code is like this: 

```ruby
royg
```

And so if i put in a guess like this: 

```ruby
ribv
```

Then I have one correct color in the right position. 

Now it could have also been like this: 

```ruby
#secret code
royg

#guess
obiv
```

now this would have been: right color, wrong position, because orange

So then, i need to work out some system to show when I have: 

1. right color, wrong position
2. right color, right position

That actually seems really confusing. So I want to think about it a little more. 

I mean, what am I starting with? and what do I want to end up with? 

I'm starting with...something I don't currently have...I mean, I still need to do some sort of evaluation. 

I mean, I need to some how take a look at the `@user_guess` and figure out if each element is: 

1. right color, wrong position, or
2. right color, right position

since the "right color" is the same for both of these, really, if I know which colors are the right colors, I could just focus on the position....

so now...instead of continuing to focus on the overall entire program...I want to sort of "breakout" this issue regarding the right color/wrong posiiton sort of thing...and just figure out how do to this...with Ruby...and then figure out how to do this in the program....

So...I have two arrays: 

1. the user guess
2. the secret code

and I need to do two passes: 

1. right color, wrong position? 
2. right color, right position? 

and put the results of those two passes into one array, and then return that one array. 

