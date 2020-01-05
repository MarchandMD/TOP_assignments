# frozen_string_literal: true

class Game
  attr_accessor :colors, :secret_code, :user_guess, :correct_colors

  def initialize
    @colors = %w[r o y g b i v]
    @secret_code = @colors.sample(4)
    @user_guess = ''
    @correct_colors = 0
  end

  def play
    prompt_user_to_make_or_break == 'b' ? get_guess : not_yet
    comparing_answer(user_guess, secret_code)
    while correct_colors != 4
      puts secret_code
      get_guess
      comparing_answer(user_guess, secret_code)
    end
    puts "congrats! you got the correct four colors! they are: #{user_guess}"
    puts right_position(user_guess, secret_code)
  end

  def prompt_user_to_make_or_break(input = nil)
    puts 'Would you like to (m)ake the code or (b)reak the code?'
    loop do
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
