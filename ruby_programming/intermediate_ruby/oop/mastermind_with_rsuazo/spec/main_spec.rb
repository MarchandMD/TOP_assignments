require './lib/main.rb'

RSpec.describe Game do
  context "#initialize" do
    it "has colors" do
      game = Game.new
      expect(game.colors).to be_falsey
    end
  end
end