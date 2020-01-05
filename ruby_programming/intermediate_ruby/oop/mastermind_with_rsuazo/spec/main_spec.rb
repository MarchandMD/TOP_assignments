# frozen_string_literal: true

require './lib/main.rb'

RSpec.describe Game do
  context '#initialize' do
    it 'has colors' do
      game = Game.new
      expect(game.colors).to be_an(Array)
    end
  end


  context '#comparing_the_answer' do
    it 'returns an integer' do
      game = Game.new
      the_guess = %w[r o y g]
      the_code = %w[g y i v]
      expect(game.comparing_answer(the_guess, the_code)).to be_an(Integer)
    end
  end

  context '#get_guess' do
    it 'sets the @user_guess instance variable to the input string' do
      game = Game.new
      my_guess = %w[r o y x]
      expect { game.get_guess(my_guess) }.to raise_error(NoMethodError)
    end
  end
end
