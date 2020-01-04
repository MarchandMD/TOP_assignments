# frozen_string_literal: true

require 'spec_helper.rb'

class Game

  RSpec.describe Game do
    context "#prompt_user_to_make_or_break" do
      it "returns either an 'm' or a 'b'" do
        game = Game.new
        expect(game.prompt_user_to_make_or_break('m')).to eq('m').or eq('b')
      end
    end
  end

end
