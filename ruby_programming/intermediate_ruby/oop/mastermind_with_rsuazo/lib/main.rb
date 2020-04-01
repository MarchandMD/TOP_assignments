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
    make_or_break == 'b' ? get_guess : not_yet
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
      # so this "conditional assignment" ( that would be the ||= after the 'input' of the next line)
      input ||= gets.chomp.downcase
      if input == 'm' || input == 'b'
        break
      else
        puts 'invalid entry; only (m) or (b) are valid entries'
        input = nil
      end
    end
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

  def not_yet
    puts "haven't done that yet"
  end
end

class Two
  # methods will go in here
end
