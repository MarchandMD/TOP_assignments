require_relative "tic_tac_toe/version"
#This is how my Gem will be able to define a Module from several files within a directory; I'll be able to use the module TicTacToe code...and then this is like the central hub for the module, since it pulls in the relative files, using the require_relative keyword...



module TicTacToe
  class Error < StandardError; end
  # My code goes here...but I shouldn't actually write anything in here specifically; A better default message would be: My code gets put in here; teach yourself how to spread the contents of a module across several files within a directory (Yes, it is possible to add classes to a module from several different files)
end

require_relative "./tic_tac_toe/cell.rb"
require_relative "./tic_tac_toe/player.rb"
require_relative "./tic_tac_toe/board.rb"
