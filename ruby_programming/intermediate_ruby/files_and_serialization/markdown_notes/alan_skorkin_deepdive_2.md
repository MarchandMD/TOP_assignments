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

Try that....