require 'ruby2d'

class Chessboard
  attr_accessor :squares, :chessboard

  def initialize
    @chessboard = []
    @squares = []
  end

  # Helper method to determine the piece at a given position
  def piece_at(x, y)
    @chessboard.find { |piece| piece.x == x && piece.y == y }
  end

  def capture(piece_at_target)
    @chessboard.find { |piece|
      piece_at_target.image.remove if piece.x == piece_at_target.x && piece.y == piece_at_target.y
    }
    @chessboard.delete(piece_at_target)
  end

  # Helper method to determine if a square is dark or light
  def dark_square?(row, col)
    (row.even? && col.odd?) || (row.odd? && col.even?)
  end

  def setup_pieces
    # Create and position the chess pieces
    # Create the @chessboard squares
    8.times do |row|
      8.times do |col|
        square_color = dark_square?(row, col) ? 'gray' : 'white'
        square = Rectangle.new(x: col * 80, y: row * 80, width: 80, height: 80, color: square_color)
        @squares << square
      end
    end

    # Create and position the chess pieces
    # White pieces
    @chessboard << Piece.new('white', 'img/white_rook.png', 0, 560, 'White Rook', 1)
    @chessboard << Piece.new('white', 'img/white_knight.png', 80, 560, 'White Knight', 1)
    @chessboard << Piece.new('white', 'img/white_bishop.png', 160, 560, 'White Bishop', 1)
    @chessboard << Piece.new('white', 'img/white_queen.png', 240, 560, 'White Queen', 1)
    @chessboard << Piece.new('white', 'img/white_king.png', 320, 560, 'White King', 1)
    @chessboard << Piece.new('white', 'img/white_bishop.png', 400, 560, 'White Bishop', 1)
    @chessboard << Piece.new('white', 'img/white_knight.png', 480, 560, 'White Knight', 1)
    @chessboard << Piece.new('white', 'img/white_rook.png', 560, 560, 'White Rook', 1)

    8.times do |col|
      @chessboard << Piece.new('white', 'img/white_pawn.png', col * 80, 480, 'White Pawn', 1)
    end

    # Black pieces
    @chessboard << Piece.new('black', 'img/black_rook.png', 0, 0, 'Black Rook', 1)
    @chessboard << Piece.new('black', 'img/black_knight.png', 80, 0, 'Black Knight', 1)
    @chessboard << Piece.new('black', 'img/black_bishop.png', 160, 0, 'Black Bishop', 1)
    @chessboard << Piece.new('black', 'img/black_queen.png', 240, 0, 'Black Queen', 1)
    @chessboard << Piece.new('black', 'img/black_king.png', 320, 0, 'Black King', 1)
    @chessboard << Piece.new('black', 'img/black_bishop.png', 400, 0, 'Black Bishop', 1)
    @chessboard << Piece.new('black', 'img/black_knight.png', 480, 0, 'Black Knight', 1)
    @chessboard << Piece.new('black', 'img/black_rook.png', 560, 0, 'Black Rook', 1)

    8.times do |col|
      @chessboard << Piece.new('black', 'img/black_pawn.png', col * 80, 80, 'Black Pawn', 1)
    end
  end
end
