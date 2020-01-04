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
        make_the_code
        break
      elsif input == "b"
        puts "you will break the code"
        break_the_code
        break
      else
        puts "invalid entry; only (m) or (b) are valid entries"
      end
    end
  end
```

