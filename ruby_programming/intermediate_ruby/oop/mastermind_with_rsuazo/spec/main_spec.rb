require './lib/main.rb'

RSpec.describe Game do
  context "#initialize" do
    it "has colors" do
      game = Game.new
      expect(game.colors).to be_an(Array)
    end
  end

  context "#try_again" do
    it "outputs 'you need to try again' to standard output" do
      game = Game.new
      expect { game.try_again }.to output.to_stdout 
    end
  end

  context "#comparing_the_answer" do
    it "returns an integer" do
      game = Game.new
      the_guess = "royg"
      the_code = %w[g y i v]
      expect(game.comparing_answer(the_guess, the_code)).to be_an(Integer)
    end
  end
end