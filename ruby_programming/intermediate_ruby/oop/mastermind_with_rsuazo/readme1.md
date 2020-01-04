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

Now, when I create an instance of the `Game` class, I now have access to `@colors` which is an `Array`. then I set `@secret_code` by using the `Array` that is stored in the `@colors` instance variable, and calling `@sample` four times `@colors.sample(4)`. 

this requires having a working knowledge of `Array` methods. 

A working knowledge means: I know where to find the documentation for the different `Array` methods, and I know how to look them up. 

And I've used different methods before, andI know there are different things that methods can do. 

So if I want an object like an `Array` to do something, many times there is already a method that exists, and all have to do is find how to use the method by looking at the documentation. 

That's what "working knowledge" is....




