# frozen_string_literal: true

class Game
  attr_accessor :colors, :secret_code

  def initialize
    @colors = %w[r o y g b i v]
    @secret_code = @colors.sample(4)
  end

  def play
    prompt_user_to_make_or_break == "b" ? break_the_code : "making the code"
  end

  def prompt_user_to_make_or_break(input = nil)
    puts "Would you like to (m)ake the code or (b)reak the code?"
    loop do
      input ||= gets.chomp.downcase
      if input == "m" || input == "b"
        break
      else
        puts "invalid entry; only (m) or (b) are valid entries"
        input = nil
      end
    end
    input
  end

  def break_the_code
    puts "enter your guess.\n"
    puts "your options are:\n"
    puts "(r)ed, (o)range, (y)ellow, (g)reen, (b)lue, (i)indigo, (v)iolet"
    loop do
      color_choices = gets.chomp.downcase
      if color_choices.length != 4
        puts "select 4"
      elsif color_choices.split("").uniq.length != 4
        puts "no duplicates"
      elsif color_choices == 4
        i = 0
        testing = []
        while i < color_choices.split("").length
          testing << colors.include?(color_choices[i])
          i += 1
        end
        puts testing.all?(true) ? "good guess" : "only valid colors please"
        color_choices = gets.chomp.downcase
      else
        break
      end
    end
  end
end

instance_of_game_class = Game.new
instance_of_game_class.play
