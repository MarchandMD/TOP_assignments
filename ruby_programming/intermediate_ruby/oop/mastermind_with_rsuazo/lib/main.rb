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
    make_or_break == 'b' ? get_guess : make_the_code
  
    # 17. So the next thing the overall program (and more specifically #play method) is attempting to do, is run the #comparing_answer method...so I now have to re-acquiant myself with the #comparing_answer method. 
    comparing_answer(user_guess, secret_code)
    while correct_colors != 4
      puts secret_code
      get_guess
      comparing_answer(user_guess, secret_code)
    end
    puts "congrats! you got the correct four colors! they are: #{user_guess}"
    puts right_position(user_guess, secret_code)
  end

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

  def get_guess(input = nil)
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

  # 18. Here it is. So, what the hell is it doing? Man, I feel like I should have to work this hard to understand what the method is doing. Then again, I am returning to the code after being awway from it for a while. But that's alright...I can still be constructively critical of the code. So, slow down a litlte bit, and understand the method, so I can understand why the script is breaking when the user takes a certain action. 
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
