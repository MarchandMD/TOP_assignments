# frozen_string_literal: false

class Game
  attr_accessor :colors, :secret_code, :user_guess, :correct_colors

  def initialize
    # an array
    @colors = %w[r o y g b i v]
    # an array of 4 built with the built-in Array#sample method
    @secret_code = @colors.sample(4)
    # an empty instance variable...to be populated later; needs to be an empty string; so I probably need to change the magic comment at the top of this to false (which I just did)
    @user_guess = ''
    # an instance variable being used to count. Starting at 0, obviously...
    @correct_colors = 0
  end

  # called with Game#play; Wonder what it really does...
  def play
    # so this method name is a little verbose: #prompt_user_to_make_or_break; could probably be reduced to #make_or_break
    # run the #make_or_break method right away, which either returns 'b' or it does not. Before moving on, I should probably
    # go and take a look at #make_or_break
    # 11. alright, so i have this simple ternary statement checking if the #make_or_break method returns a 'b' or not; The next thing I'm looking at is the methods here for the true/false responses to the simple logic of the ternary statement; and I see that we've created a method for when the user wants to break the code, but we haven't created a method for the situation when the user wants to #make_the_code; all I have is a method called #not_yet (since renamed to make_the_code); So, since I'm attempting to walk into Ruby again, I think I'm ready to take a look at the #not_yet (since renamed to make_the_code) method, and attempt to begin writing code there....so here we go...

    # 16. So, I htink the issue obviously will be within this #play method...because there are some definitive commands that are being called sequentially, and non-conditionally. So, with that information in mind, the obvious thing to do is to look at the next line of the #play method, to see what the program/Ruby is attempting to do....
    make_or_break == 'b' ? break_the_code : make_the_code
  
    # 17. So the next thing the overall program (and more specifically #play method) is attempting to do, is run the #comparing_answer method...so I now have to re-acquiant myself with the #comparing_answer method.
    
    # 21. Ok, so i'm really starting to "see" this @play method for what it is...and it's a little sloppy. Or it's a lot sloppy. So I'm going to think about the game play a little bit. Like, what's the natural flow that I think should be happening? First: determine if the user wants to make or break the code. I've got that. If the user wants to break the code, then there should be a method called @break_the_code...and that method should, IMHO, contain everything regarding the breaking of the code. Other methods can be in that one, but the @play method should be as simple as possible. If I try to keep eerything simple as possible by writing "ghost" methods, then I am simultaneously building the existing method, and creating more work for down stream. Which is ideal, because then i always ahve something to do. And can scheduel things...sort of. If I was the scheudling type. Which I'm not. 

    # 22. So I want to start moving things around. I'm going to look at getting rid of the @get_guess method...or maybe just renaming it...and then building up the @make_the_code method. So here goes. next comment

    # 23. So, I just changed @get_guess to @break_the_code...and something strange appeared....in the @play method, I already have a call to @break_the_code at the appropriate time...but then, I also have a while loop that will call the @break_the_code method. so I think I want to look at this while loop...and see if I can simply this @play method. because it doesn't need to be like this. It doesn't need to be doing what it's doing now. If I'm going to @play a game of mastermind, I'm going to decide to either @make_the_code or @break_the_code.... so when..where would comparing the answer come into play? Well, if I was breaking the code...it would be something I do after I @guess_the_secret_code.... so then, I think I walso am close to firing up Rspec again, to look at things from that perspective. But I think the next thing I'm really going to do is start to comment out large sections of the code, and move from there.


    # comparing_answer(user_guess, secret_code)
    # while correct_colors != 4
    #   puts secret_code
    #   break_the_code
    #   comparing_answer(user_guess, secret_code)
    # end
    # puts "congrats! you got the correct four colors! they are: #{user_guess}"
    # puts right_position(user_guess, secret_code)
  end

  # 24. Ok, so I've changed the program, in a significant way. I don't like to see Errors of any type. So I've done something really simple to get myself back to a position of relative power over the program: that is, I've put most everything in comments, and I can gradually ddrip things back on as I need them. But more importantly, I've gotten rid of nothing. Which is awesome. So I can also think more seriously about getting into RSpec, which would be a good thing, shince that was the last thing Robert said he's working on. So i'll go and do that. Sweet, RSpec is already set up in here. The next thing is to try to run some RSpec tests and see what happens...

  # 25. So the RSpec tests taht are set up are working just fine. Which is really better than I expected. So that's awesome. I don't really know how I need to set up RSpec, but I know that in this program it's working correctly so I can always come here and reference this setup. Ok. So now what? Open up the main_spec.rb

  # 2. Here's the make_or_break method; it takes an optional parameter. And that's probably for testing purposes....
  # 3. So then, I know from the previous notes that I am expecting this method to either return 'b' or not...
  # 4. Ok, so this will either return an 'm' or a 'b'. So the logic in the #play method is a little ambiguous (a lot ambiguous becuase I had to come down to the actual method here to figure out what is going on...)
  def make_or_break(input = nil)
    puts 'Would you like to (m)ake the code or (b)reak the code?'
    loop do
      # 5. so this "conditional assignment" ( that would be the ||= after the 'input' of the next line) is probably here for testing purposes...again...but 'input' needs to be assigned definitely wtih a 'gets.chomp.downcase' 
      input ||= gets.chomp.downcase
      # 6. this if loop is here for input validation; that's an easy idea...
      if input == 'm' || input == 'b'
        # 7. This break command is in the if statement, but it breaks the loop
        break
      else
        # 8. So this combination of the loop and the if statement data validation is an 'easy' trick/way to combine this "infinity" loop to validate user input. I wonder if it's considered a design principle...or some sort of common technique....or more specifically, I wonder what the more common/generally accepted practices are for simple data validation in Ruby; What I've found is....by doing a quick and dirty search of 'simple data validation' is that more of the hits from the search engine are related to Rails...and of course those results for data validation are orders of magnitude simpler to apply...though it is almost another language completely, because it's the Rails framework language...which is another thing to understand...but not that much of a leap away from Ruby. 
        puts 'invalid entry; only (m) or (b) are valid entries'
        # 9. This next line proves that the conditional assignment (again, that's the existence of the ||= higher in the if statement)
        input = nil
      end
    end
    # 10. This is how the #make_or_break method returns either the 'm' or the 'b' string....and this begs the question...is there an easier way to retrieve a 'forced' response from the user, with simple input validation? But this question sort of returns to the previous question I had about simplifying data validation....so since there were no shortcuts from the interwebs, I'd have to think of this myself...or as part of a pair programming session; regardless, I now know how this method works. Which is a step in the right direction RE getting up to speed...
    input
  end

  def break_the_code(input = nil)
    puts "\n\n\nenter your guess.\n"
    puts "your options are:\n"
    puts '(r)ed, (o)range, (y)ellow, (g)reen, (b)lue, (i)indigo, (v)iolet'
    loop do
      input ||= gets.chomp.downcase
      if input.split('').length != 4
        puts 'select only 4'
        input = nil
      elsif input.split('').all? { |x| colors.include?(x) } == false
        puts 'select only valid colors'
        input = nil
      elsif input.split('').uniq.length != 4
        puts 'No duplicates; try again'
        input = nil
      else
        break
      end
    end
    @user_guess = input.split('')
  end

  def rspec_break_the_code
    true
  end

  # rspec testing: well, I don't really know what I want this method to do though; because I just wrote it completely out of context; so I shouldnt really be getting worked up over the fact that it doesn't work. So then, in what context would I be using this? Well, so the point of this is that It'd be called, when? When the user wants to break the code. So how it is called isn't a behaviour of the method; that's a behavior of some parent mehtod; what I need to look at is what is happening after this method is called. So the point is, this mehtod will be called; and then what will happen? The user will be prompted for input. So do that. OR say taht. 

  # 18. Here it is. So, what the hell is it doing? Man, I feel like I should have to work this hard to understand what the method is doing. Then again, I am returning to the code after being awway from it for a while. But that's alright...I can still be constructively critical of the code. So, slow down a litlte bit, and understand the method, so I can understand why the script is breaking when the user takes a certain action. 

  # 19. Ok, so I've had to do a lot of actual looking to decipher what is happening. And this is sort of hwat happens when reviewing code....the writing and slowing down naturally gives way to the brains ability to comprehend, which is much faster. However, the brains ability to translate or communicate that UNDERSTANDING to the OVERSTANDING is limited by my brains 'toolbox' or my brains knowledge base. That might be the id, ego and superego....where the Id is the understanding, the superego is the overstanding, and the ego is the ability to make the two cooperate. But this is taking me away from tghe coding...

  #20. So, what have I been looking at? Well, since the #comparing_answer method accepts two parameters and they are required, I was wondering where the two parameters are being defined; looking at the two parameters, they are named: 1. the_guess and 2. secret_code_arr;Now this is fairly obvious what the parameters are going to contain, at least generally. the parameters are going to be a guess and the secret code in the form of an array. So then the assumption is that the secret_code_arr is already set as part of the instantiation of a Game object instance. This is basic understanding of OOP and programming. But what is the_guess set to? the_guess is actually @the_guess, which is an instance variable, so when the Game object is instantiated, the @the_guess (this should be read as: the at-the-guess) instance variable is created. And looking at the constructor method (the initialize method) I'll see the the @the_guess instance variable is actually an empty string. So this is why the @comparing_answer method will work without any actual guess from the user. This is not an optimal way...or at least it doesn't feel like an optimally designed piece of code. Like...why have an empty string? When I could shift the parameter in the @comparing_answer to contain a default value; There could be other ways to do this too. So yeah. That's why it doesn't "feel" like optimal code. or at least, not optimal Ruby code. For what it's worth. Ok, moving on...I understand this. What else can I grasp? Why was I even looking at this? I think because I'm attempting to prevent the script from breakinh while attempting to select @make_the_code. So I'm going to go back up and look at the @play method...go there for note #21
  def comparing_answer(the_guess, secret_code_arr)
    # guess_as_array = the_guess.split('')
    good_guesses = 8 - (the_guess + secret_code_arr).uniq.length
    puts "You guessed #{good_guesses} correct colors"
    @correct_colors = good_guesses
  end

  def right_position(arr1, arr2)
    answers = []
    i = 0
    while i < arr1.length
      if arr1[i] == arr2[i]
        answers << "+"
      else
        answers << "_"
      end
      i += 1
    end
    answers
  end

# 12. So here is the #not_yet (since renamed to make_the_code) method..and I want to see it in actino, because I'm fairly certain the entire script throws an error after it's run, which is not the desired efffect of the #not_yet (since renamed to make_the_code) method....I wonder if there's a way to decipher this behavior in Rspec, though it's easier now to just run the entire program, and see what it does. 

# 13. Ok, so yeah: running the entire program and attempting to make the code results in a TypeError being thrown. So, that's then next thing I want to look at. Or do I? Do I really want to spend time attempting to figure how to make this error work correctly? Or would I prefer to begin to build the functionality i'm looking for? The obvious thing is the latter of the two. 

# 14. First thing I'll do is: change the name from #not_yet (since renamed to make_the_code) to #make_the_code; I'll do this with the "find/replace" feature of VScode...to be certain I catch all instances of it.

# 15. Ok, now I want to do a little more than just say "haven't done that yet"...but....I know that I want this method to NOT simply break the script. So now I can do the former thing I was considering doing, and make this method NOT break the entire script. Which would allow me to move forward confidently with the rest of the code for this method. this requires me to go back to the #play method and take a look at the simple ternary statement I have, to see what is happening when the #play method runs the #make_or_break method, and what the #play method is doing with the returned value of 'm' from the #make_or_break method
  def make_the_code
    puts "haven't done that yet"
  end
end

class Two
  # methods will go in here
end
