class Pawn < Piece
  attr_accessor :on_initial_square, :color
  
  def initialize(color)
    super(color)
    @on_initial_square = true
    case @color
    when "black" 
      @unicode = "\u2659"
    when "white"
      @unicode = "\u2659"
    end    
  end

  #def get_valid_moves(from_square, to_square)
  #end

end