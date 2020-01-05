# frozen_string_literal: true

class Game
  attr_accessor :colors, :secret_code, :user_guess

  def initialize
    @colors = %w[r o y g b i v]
    @secret_code = @colors.sample(4)
    @user_guess = ''
  end

  def play
    prompt_user_to_make_or_break == "b" ? prompt_user_for_guess : "making the code"
    get_guess
    validate_guess(user_guess) == true ?  comparing_answer(user_guess, secret_code) : try_again
  end

  def prompt_user_to_make_or_break(input = nil)
    puts "Would you like to (m)ake the code or (b)reak the code?"
    loop do
      input ||= gets.chomp.downcase
      if input == "m" || input == "b"
        break
      else
        puts "invalid entry; only (m) or (b) are valid entries"
      end
    end
    input
  end

  def prompt_user_for_guess
    puts "enter your guess.\n"
    puts "your options are:\n"
    puts "(r)ed, (o)range, (y)ellow, (g)reen, (b)lue, (i)indigo, (v)iolet"
  end

  def get_guess(input = nil)
    loop do
      input ||= gets.chomp.downcase
      if input.split('').length != 4
        puts 'select only 4'
        input = nil
      elsif validated(input) == false
        puts "select only valid colors"
        input = nil
      else
        break
      end
    end
    @user_guess = input
  end

  def validated(a_str, an_arr)
    i = 0
    values = []
    guess_arr = a_str.split('')
    while i < guess_arr.length
      values << an_arr.include?(guess_arr[i])
      i += 1
    end
    values.all?(true) ? true : false
  end

  def comparing_answer(the_guess, secret_code_arr)
    guess_as_array = the_guess.split('')
    correct_colors = 8 - (secret_code_arr + guess_as_array).uniq.length
    if correct_colors == 4
      puts "Nice! You guessed all the correct colors"
    elsif correct_colors == 0
      puts "You guessed none of the right colors"
    else
      puts "You guessed #{correct_colors} correct colors"
    end
    correct_colors
  end

  def try_again
    puts "you need to try again"
  end

end

