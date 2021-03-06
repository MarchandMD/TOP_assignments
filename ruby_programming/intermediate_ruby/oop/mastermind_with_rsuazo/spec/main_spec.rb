# frozen_string_literal: true

require "./lib/main.rb"

RSpec.describe "@rspec_break_the_code" do
  describe "the methods return value" do
    it "is true" do
      game = Game.new
      expect(game.rspec_break_the_code).to eq(true)
    end
  end
end

RSpec.describe "@prompt_the_user" do
  describe "how a guess is solicited from the user" do
    it "puts text to standard output" do
      game = Game.new
      expect{ game.prompt_the_user }.to output.to_stdout
    end

    specify "the specific  text that is presented to the user" do
      game = Game.new
      expect{ game.prompt_the_user }.to output("\n\nEnter a guess\n\nyour options are (select only 4):\n(r)ed, (o)range, (y)ellow, (g)reen, (b)lue, (i)indigo, (v)iolet\n").to_stdout
    end
  end
end

RSpec.describe "generate_a_guess" do
  describe "what the method does" do
    it "returns a random string of four letters" do
      game = Game.new
      expect(game.generate_a_guess.length).to be(4)
    end
  end
end

# and just like that, I'm up and running with errors from RSpec, and I suddenly feel good about where I am in Ruby and what I'm doing. So that took about a day to get back up to speed. but I still have a long way to go...but I'm grateful for that.

# and now I have to figure out wy this isn't working; and that's alright; Ok, I got the test to pass; and I know how I got it to pass, and I know why it's passing. And I know a little more about the @break_the_code method; but I still need to do more with this. So what's the next thing i want to do? I mean I know that I knowhow to makethe entire program work...but what's the small segmenet I'm working on now? Well, I think the idea is I need to make the @break_the_code method a little more robust...or I need to test it a little bit omre. the first thing to do is to actually look at the method and see what it is capable of doing. The issue is, I'm not sure I'll be able to test it...or I don't know how to test in in RSpec completely; It's one of those things that needs me to either a. be a lot better at RSpec or to b. just teset it live in the command line. Yeah, so the @break_the_code method works just fine; I'd just need to know a lot more about how to use RSpec with gets.chomp situations. Adn i'm not about to start learning that at 1am.

# 2. Ok, so now, what I want to do is understand the @break_the_code method a little better; so what I need to do is find some way to connect my overstanding to my understanding, and then write tests for it. So that's kind of what the tests are for...they're the ego. Because I've already decided that the overstanding is the superego...too proud to admit it doesn't grasp the entire concept, but knows that an idea is important to grasp for fulfillment and satisfaction and pleasure. The idea of not understanding (which is overstanding) is actually the position of Godliness, because by claiming or knowing to be in a position of standing over, the concept is not grasped, because it's not granular enough and it's not syntehsizable, because it's beyond comprehension....but by standing over it, the idea/concept can continue to wriggle and express itself...not with the hopes of being understood, but simply to be existing. Then, the id is the understanding...being a very base, animal, instinctual, visceral want/need fulfillment that knows what it wants, knows what it needs, understands the things beyond itself that will provide the fulfillment, and can acquire. So then, what do I need to do, related to the code? I currently overstand the @break_the_code method. I need to get to a place of understanding. So I need to allow the @break_the_code to simply behave for me for a while. And the way I can do that is by using the Ego or the testing stuff. This'll help me. The ego knows to just do a little at a bit, to make the two cooperate.

# 3. ...ok, so this is a little bit about where I can learn. I have to learn how to better use RSpec, as well as understand this method. Instead of focusing on a single thing, I know that I cna better understand...(the ego knows how to)...by learning about a different topic using the real topic as an example for study...so RelishApp it is...

# 4. Alright, so here's the first step I'm seeing...I've been writing things wrong. Or...not leveraging RSpec the way it's meant to be written. And maybe this is how to use it more effectively. What I'm doign is attempting to write tests for an existing method; when what I need to do is write a method from the tests that are written to describe the behavior of the method.

#5. alright, so now, here I am with a method waiting to be written, and an ability to write the unit tests...but I'm having a tough time figuring how to write tests...like...I am not thinking about the method too much; I'm thinking more about the tests. So just write a test that will fail, and then write the code to make it pass...just barely. Like they say.

# 6. Now, what's wrong with this unit test is that "prompt_the_user" is not a valid expectation clause. and I'd need to figure out how to re-phrase this. And that's what I learn from the relishApp website. Right? I think so.
