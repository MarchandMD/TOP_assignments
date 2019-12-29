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



