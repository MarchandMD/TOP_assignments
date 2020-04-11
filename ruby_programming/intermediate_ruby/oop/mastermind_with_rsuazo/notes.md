# 4/1/2020

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

Alright, so here...an issue. I'm attemptingto write a test for this method...but I'm attempting to test for behaviour that is not the return value of the mehtod. 

Instead of attempting to figure out how to write a test for this sort of scenario, it just dawned on me that perhaps I'd be better suited to reduce the method, and make it do less....

so instead of just writing a new method, I'm going to build it through RSpec first...

And here's what I've done: 

```ruby
RSpec.describe "#prompt_the_user" do
  describe "how a guess is solicited from the user" do
    it "puts text to standard output" do
      game = Game.new
      test_variable = game.prompt_the_user
      expect{test_variable}.to output.to_stdout
    end
  end
end
```

but I haven't actually writte the `#prompt_the_user` method any where in the `main.rb` file. 

So i'm going to run the test suite, though It's a little unncessary. 

# 04/04/2020
Alright, so, want to continue to do some work, but it's very slow going right now. But I am doing some work; the work I'm doing is simplifying the #break__the)_code method. the way i'm simplifying the method is by removing unnecessary code from within the method, writing a brand new methdo simlpy to store the unnecessary...that is still necessary to the overall program, but not necessary to the individual method behavior. 

So, what I'd really like to know now is if I can test...well, look, i've already tested the #prompt_the_user mehtod to completion. And I can use that mehtod in the #beak_the_code method, without needing to test it. No, I believe there is no need to test if one method contains another method. Taht's not the purpose of the method. Instead, I could simply keep the #prompt_the_suer mehtod out of the #break_the_code

so, what can i do? 

Well, the Game#play method is supposed to be doing most of the work. 

But what I can do, is I can work within that method. 

Now, what I'm doing is simply running a ternary statement logic that's then flowing to somethign else....one of two other methods. 

What I want to do is do this `#prompt_the_user` method; but i'm not sure where to do that within the `#play` method. 

I mean, the first answer that comes to m ind is doing something more complicated than a ternary statement...because it's entirely possible that it's not the most appropriate thing to do now. 

And if was doing something like an `if` statement, I could add more individual statements.  for now, this is more suitable. Keep moving forward until something else comes along. 

so then, yeah, this works. And I can write some more tests...


So looking for the next thing to do, I'm looking at the #breakt_thec=ode metho, and I realize that it isn't actually breaking the code...or at least, the name of the method is not accurate; it's not breaking a code, is entering a guess. 

So, yeah, IO mean, that's waht i'm going to do, i'm going to change ths method name to somethign more accurate. And i'm going to focus on something else. I mean, what I ahve is I will have a method that will make a guess, and then if I create some AI (type of thing) then I should, or could be able to use it to generate a guess. 

# 04/05/2020

So, I left yesteday with beginning to build the `generate_a_guess` method; and that's going to mimic the current `#break_the_code` method; so what's the point of creating a similar method? The point is to both usurp the current method, as well as continue to build the new method out using testing to complete it's capability. 

So with that ssaid, I'll begin writing tests for it. 

Ok, so now that I'm doing some work, I want to take a closer look a the RSpec: specifically, Im looking at the Core of RSpec 3.9, and the Eample groups. Because the example groups are the things that are within `describe` and `it`. 

So, yeah, i have a pretty good grasp on what the example group is....at the end of the day it's the actual unit tests that are living within the `it` block...which is typically living within the `describe` block. 

the enxt section within the RSpec documentation Core section, following the description of exmaple gruops is `Shared examples`

## Shared examples
> a shared exmaple lets me describe behaviour of classes or modules. When declared, a shared groups content is stored. It is only realized in the context of another example group, which provides any context the shared group needs to run. 

I don't know what any of these sentences mean. So let me pick it apart. 

> 1. A shared example leets me describe behavior of classes or modules. 

So I'm familiar with both classes and modules. So a shared example is an additional tool to help me describe the behavior of classes or modules, similar to example groups. So do they take the place.

> 2. When declared, a shared group content is stored. 

So this suggests that shared examples don't always need to be declared; so this re-inforces the idea that they are another tool that I can choose to use or not use within an example group. 

So as I look at it now...there are example groups and therea re shared examples. So is the implication that the shared examples....are shared example *groups*? I'm not sure. 

Keep reading. 

The shared group....yes, it is `shared example GROUPS` because the next sentence fragment is: 

> ...a shared group content is stored. 

so this explicitly states something. That the shared example is a group. And the content of the example group is stored, and will be allowed to be shared. 

> 3. It is only realized in the context of another example group, which provides any context the shared group needs to run. 

So this says that the shared examples are only seen in the context of another example group, and that the context of the second example group will provide context for the shared example group to run. 

So this helps a little more: it sounds like the idea is that the example groups are providing context to the code...and that it's possible to have one basic example group, and then to create a second example group that has some more context and it's possible to take that first basic example group and share it with the second example group, whihc contains additional context. So let me see it in action or wtih an exmple group and see if I can combine the documentation definition, my interpretation, and the documentation examples. 

## shared examples examples

So, before I dig into this...I'll say: I know this is a litlte over my head in terms of implementation, but that's alright for me. 

So The first expalanation the examples give me is a way to include certain examples in another example group. Which is of course implying that there's a way to "name" a gropu of examples. 

I guess what I'm seeing here is that this idea is actually much mnore advanced than I'm attempting to use or do with RSpec. Like, it doesn't help me write inidivudal unit tests; instead this is teachimg me how to share entire example groups across example groups. Which isn't something I know to do, or have a need to do. at least not yet. So i'm going to move onto the next idea in the core documentation section. 

## Shared Context

Ok, so this looks like it might be helpful within the first sentence of the documentation: 

>  User `shared_context` to define a block that will be evaulated in the context of example groups either locally, using `include_context` in an example group, or globally using `config.include_context`

So, what Im assuming this mean is that I'm looking at a block that is defined and will be evaluated for a local example group. So I define some block in the context of an example group, and whatever is in that block will be applied to the unit tests. 