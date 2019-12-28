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

So now I have a new `File` object, and it just created a File with the name of the input from the user, and I should probably do a little more scrubbing of the 