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

  def get_valid_moves(from_square, to_square)
    potentials = []
    if @on_initial_square && @color == "white"
      potentials.push(
        [from_square.x, from_square.y + 1], 
        [from_square.x, from_square.y + 2]
      )
    elsif @on_initial_square && @color == "black"
        potentials.push(
          [from_square.x, from_square.y - 1], 
          [from_square.x, from_square.y - 2]
        )
    end
  end

end