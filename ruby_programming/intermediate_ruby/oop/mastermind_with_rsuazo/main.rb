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

end

instance_of_game_class = Game.new
instance_of_game_class
