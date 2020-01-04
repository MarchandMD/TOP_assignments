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
    puts validate_guess(user_guess, colors) == true ? "nice" : "bad"
  end

  def prompt_user_to_make_or_break(input = nil)
    puts "Would you like to (m)ake the code or (b)reak the code?"
    loop do
      input ||= gets.chomp.downcase
      if input == "m" || input == "b"
        break
      else
        puts "invalid entry; only (m) or (b) are valid entries"
        input = gets.chomp.downcase
      end
    end
    input
  end

  def prompt_user_for_guess
    puts "enter your guess.\n"
    puts "your options are:\n"
    puts "(r)ed, (o)range, (y)ellow, (g)reen, (b)lue, (i)indigo, (v)iolet"
  end

  def get_guess
    input = gets.chomp.downcase
    loop do
      if input.split('').length != 4
        puts 'select only 4'
        input = gets.chomp.downcase
      else
        break
      end
    end
    @user_guess = input
  end

  def validate_guess(string, arr)
    guess_as_array = string.split('')
    i = 0
    true_values = []
    while i < guess_as_array.length
      true_values << arr.include?(guess_as_array[i])
      i += 1
    end
    true_values.all?(true) ? true : false
  end
end

instance_of_game_class = Game.new
instance_of_game_class.play
