module TicTacToe
  class Board

    attr_reader :grid

    def initialize(input = {} )
      @grid = input.fetch(:grid, default_grid)
    end

    def get_cell(x,y)
      grid[y][x]
    end

    def set_cell(x,y,value)
      get_cell(x,y).value = value
    end

    def draw?
      grid.flatten.map { |cell| cell.value }.none_empty?
    end

    def winner?
    end

    def game_over
      return :winner if winner?
      return :draw if draw?
    end

    private

    def default_grid
      Array.new(3) { Array.new(3) { Cell.new } }
    end

    


  end
end

grid = [["A", "B", "C"], ["D", "E", "F"], ["G", "H", "I"]]
