It's tough to return after stepping away for a minute. 

So then, what to do....

To step back in, start by looking around first, and then taking a step..

Ok, I've been writing a lot of comments in line. I'm going to do my best to move the note taking to this markdown file named notes. 

I'm currently working on the unit test for `rspec_break_the_code` and I'm attempting to find a more appropriate validation clause (i think it's called a validation clause) than `prompts_the_user` because that's obviously not valid. 

Ok, so what I'm doing onw is reading the relishApp documentation, to introduce myself more formally to RSpec, and what I'm finding is that I'm using RSpec in a very rudimentary way. And what I'd like to do is to follow the idiomatic process of writing RSpec tests, so I can learn how and when I'd like to deviate from the idiomatic methods...

So this is yes about writing the program, but it's becoming more about using RSpec. I know the opint is to learn about RSpec at the "appropriate" time according to the curriculum, but I've spent so much time away, and I'd rather take the time to learn about this subject now, to help me write a better program...or to improve my ability to construct a program. Stop convicinng yourself and go to the documentation...don't bore us, get to the chorus. 

https://relishapp.com/rspec/rspec-core/v/3-8/docs/example-groups/basic-structure-describe-it

## Basic Strcutre of RSpec tests
### "describe" and "it"  

RSpec uses the words 'describe' and 'it' to express concepts like I would in a conversation; furthermore, using 'describe' and 'it' is another way to organize the program/unit test itself.  'describe' i tink is interchangable with 'context'. And 'it' is used to deliniate an actual unit test. The example is given: 

> "describe an account when it is opened"
> "it has a zero balance."

This method of conversating seems forced, or robotic. Like, "describe an account when it's opened"....it's difficult to make this transpose to other ideas, because the tests or the object isn't always so static. I mean, the object here is an "account". And I'm thinking about a method that will "@break_the_code". So perhaps if I were to think about the method `@break_the_code` as an object, I might have some more success with thinking about ways to talk/discuss it. 

So how could I think about the method as an object? Break_the_code..... well...what object is breaking the code? And that answer is: THE USER. The USER is the object. So maybe something like: 

#### write 5 "describe" statements for a car
1. describe a car when it is parked
2. describe a car when it is idling
3. describe a car when it is fully fueled
4. describe a car when it is being started
5. describe a car when it is driving

#### write 5 'describe' statements for a calculator
1. describe a calculator when it is power button is pushed
2. describe a calculator when the plus button is pushed
3. describe a calculator when the multiplication button is pushed
4. describe a calculator when it the clear button is pushed
5. describe a calculator when a digit button is pushed

#### write 5 'describe' statements for a user attempting to break a code
1. describe a user when they guess a color
2. describe a user when they guess an incomplete code
3. describe a user when they guess too many colors
4. describe a user when they guess one correct color
5. describe a user when they guess one correct color in the correct location

Okay, so this actually a little easier with the exercises; like, by giving myself some exercises, the idea becomes a little easier to understand....accessible to my id at a whim. IDea.

Um, what else? Ok, so yeah,  I've got a little better grasp on writing a 'describe' statement, but I rarely write any describe statements when I'm writing my tests. So why don't I try that now. 

I'm definitely learning here. But I need to slow down now, because there's a lot that I just did, and I want to understand it. My Testing is right in the middlel between the understanding and the overstanding, and I"m moving from a place of confusion to a place of fusion. 

so, I moved away from the relishApp; returning...

The 'describe' method (describe is actually a method...wow)...creates an example group. so it actually looks like this: 

```ruby
RSpec.describe 'a user when they guess a color' do
  # stuff goes here
end
```

and this is how I get a layer deeper in RSpec. Um, what else? I want to check on my car now. But I want to understand a little more. 

So i've been very hesitant to go much deeper with RSpec; though I've wanted to go deeper and deeper with it. So, I feel like, maybe what I wnat to do is move backwards a little and look at some of the other test suites I've built, and re-organize them a little bit. But that seems counter productive. I want to continue to move forward. So move forward. And do that. So, yeah. Because that's important to me. So I want to maybe...with the current test suite, move these things around alittle bit, becasue I am describing more than just the Game.I mean, the Game is the entire object; and yes, I am describing the object...but i'm actually describing smaller parts or portions within the Game object, and I know taht I am; I don't know that I resally need to worry too much more about that. I mean, take what I know now and move forward.  

Ok, so it's ossible that I've been using the `context` keyword of RSpec incorrectly all along. Or, I mean, It's been serving me and what I'm doing, though I've been using it incocrectly. So that doesn't necessarily upset me, but it does mean I've got some unlearning to do. Or at least I have some fusion/confusion, and I'm undoing and re-doing, which is alright with me. 

Ok, so now, what I've done is I've reogranized the test suite to use more of the `RSpec.describe` language. And that means I might want to attempt to use more plain language. 

Ok, so I wantn to conitinue to look at how to write in RSpec. Because I learn this way. 

The `RSpec.describe` language creates an example group. I sort of understand the idea of an example group. It also creats a very neaet block I can visually see. 

So, inside the `RSpec.describe` block, I can declare something called a `nested group`, using `describe` or `context`. Ok, so this is where I see the confusion witht he `describe` word. It's something used twice; but I can use `context` instead of `describe` to avoid confusion; but I may want to use `describe` simply to get into a habit of seeing...but that's sort of what I've been doing...just with the alternative keyword. Though maybe I have been using the RSpec corectly? I'm not sure. I'll keep going like this...maybe they'll be some more clarity that is provided along the way. 

So, within the `RSpec.desribe` block I can use: 

1. `describe`
2. `context`
3. `it`
4. `specify`

> Under the hood, an example group is a class in which the block passed to
> describe or context is evaluated. The blocks passed to it are evaluated
> in the context of an instance of that class.

Ok, so, an example group is the entire thing that's delineated by the `RSpec.describe`. The example group is like a class. And I'm pretty comfrotable with the idea of a class. Um, next. 

So the class has methods. Those methods are `describe` and/or `context`. The blocks passed to `describe` and `context` will be evaluated. within the `describe` and `context` blocks will live the unit tests of `it` and perhaps `specify`...and any block passed to `it` is evaluated in an *instance* of that class. 

This seems to make sense, but I'm not sure. So I want to take a closer look at the examples/tests I have set up. 

So, it looks like the way I can use RSpec is a little more wide open. It's not quite so dogmatic, or idiomatic; I mean, the way the documentation is written, it feels like a full pair of lungs. 

# 4/3/2020
Alright, so now what am I going to start with? I'm pretty sure I was doing some RSpec teting yesterday when I finished the day; and I want to pick up where I left off; but there was a definite method I was working on when my focus shifted to RSpec. It had to be @break_the_code...since the RSpec method I created is called @rspec_break_the_code; so that's what I'll return to. But right now, what I'm doing is working on RSpec, and understanding a little more about it. Becuase I want to write RSpec tests with some clarity, with some accuracy. And it would really help to build faster. I believe. So, let me continue with the RSpec study...


Ah, that's right, I was attempting to find some information on `specify`...but I'm not certain `specify` is an actual keyword in RSpec. So i'm going to return to the about page and see if I can find where I think it's referenced.

Ok, so the only thing I can really find, in terms of providing clarity, is that `specify` is interchangable with `it`. And it's existence as a tool serves to replace `it` when `it` doesn't "read" naturally for the description of the unit test I'm attempting to write. Because remember, the entire structure of the testing is predicated on the idea that it's articulated in a conversational sense: that is: 

> person 1: Describe the beginning score of a skeeball game
> person 2: It is zero

So then the point of `specify` is to replace the `it` as articulated by person 2 in the example above. 

But I'm not sure when or how to use it. Like, I guess I'd want to write some examples of it. I'm not going to get hung up on it. Becaue Ive learned a lot more about RSpec recently that I stil want to practice with. 

#### Write 5 'describe' statements for a user
1. Describe a guess a user could make
2. Describe a response to return to a user
3. Describe an incorrect guess made by a user
4. Describe a correct guess made by a user
5. Describe a winning solution provided by a user

#### Write 5 RSpec describe statemens using the 5 'describe' statements above
```ruby
#1
RSpec.describe 'a guess a user could make' do
 #something here
end

#2
RSpec.describe ' a response to return to a user' do
  # something here
end

#3
RSpec.describe 'an incorrect guess made by a user' do
  # something here
end

#4
RSpec.describe 'a correct guess made by a user' do
  # something here
end

#5
RSpec.describe 'a winning solution provided by a user' do
  # something here
end
```

Ok, so I want to go back to the mastermind program and attempt to write some more code. Or at least get more acquiainted; 

What I want to do is write some more tests around either the @break_the_code or the @rspec_break_the_code method. Becuase what i want to do is sort of...write tests for the @rspec_break_the_code method...but really what I want to do is write the method based off the tests....so yeah...that's kind of what I'm doing. 

Ok, so now, here's what's doing: I'm looking for a RSpec example for putting tot he command line; which I've done before; but I'm doing it again with a little different context....

