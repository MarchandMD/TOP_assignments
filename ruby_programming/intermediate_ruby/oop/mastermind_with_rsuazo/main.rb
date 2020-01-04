class Game

  attr_accessor :colors, :secret_code

  def initialize
    @colors = %w[r o y g b i v]
    @secret_code = @colors.sample(4)
  end

  def get_input
    puts "Would you like to (m)ake the code or (b)reak the code?"
    loop do
      input = gets.chomp.downcase
      if input == "m"
        puts "you will make the code"
        # will change this later
        break
      elsif input == "b"
        puts "you will break the code"
        break_the_code
        break
      else
        puts "invalid entry; only (m) or (b) are valid entries"
      end
    end
  end

  def break_the_code
    puts "enter your guess.\n"
    puts "your options are:\n"
    puts "(r)ed, (o)range, (y)ellow, (g)reen, (b)lue, (i)indigo, (v)iolet"
    loop do
      color_choices = gets.chomp.downcase
      if color_choices.length != 4
        puts "only select 4"
      else
        break
      end
    end
  end

  def validate(choices, possible_colors)
    array_of_letters = choices.split('')
    i = 0
    answers = []
    while i < array_of_letters.length
      answers << colors.include?(array_of_letters[i])
      i += 1
    end
    puts answers.all?(true) ? "valid input" : "invalid input"
  end

end

instance_of_game_class = Game.new
instance_of_game_class
