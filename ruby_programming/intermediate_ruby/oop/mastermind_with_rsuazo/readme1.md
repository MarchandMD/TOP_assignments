## Testing the Easy way, with RSpec

I don't really want to do this right now....I want just build. So i'll keep doing that. when I absolutely want to use RSpec, I'll return to it. 

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