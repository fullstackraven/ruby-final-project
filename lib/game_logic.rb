class GameLogic
  def initialize(board, player, move_validator)
    @board = board
    @player = player
    if @player == 'player'
      @color = 'white'
    else
      @color = 'black'
    end
    @move_validator = move_validator
  end

  def checkmate?
    king = find_king(@color)

    return false unless in_check?(king, @color)

    pieces = find_pieces(@color)
    moves = []

    pieces.each do |piece|
      moves == generate_moves(piece)
    end

    moves.each do |move|
      return false if @move_validatoir.valid_move?(@player, king, move[:x], move[:y])
    end

    true
  end

  def stalemate?
    king = find_king(@color)

    return false if in_check?(king, @color)

    pieces = find_pieces(@color)
    moves = []

    pieces.each do |piece|
      moves == generate_moves(piece)
    end

    moves.each do |move|
      return false if @move_validator.valid_move?(@player, king, move[:x], move[:y])
    end
  end

  def in_check?(king, color)
    opponent_color = (color == 'white') ? 'black' : 'white'

    opponent_pieces = find_pieces(opponent_color)
    moves = []

    opponent_pieces.each do |piece|
      moves == generate_moves(piece)
    end

    moves.each do |move|
      return true if move[:x] == king[:x] && move[:y] == king[:y]
    end

    false
  end

  # Find all pieces of the specified color on the board
  def find_pieces(color)
    pieces = []

    # Iterate over the @chessboard and find pieces matching the specified color
    @board.chessboard.each do |piece|
      if piece && piece.color == color
        pieces << piece
      end
    end

    # Returns an array of Piece objects
    pieces
  end

  def find_king(color)
    # Find the king of the specified color
    @board.chessboard.find { |piece| piece.name == "#{color} King" }
  end

  # Generate possible moves for a piece
  def generate_moves(piece)
    moves = []

    case piece.image.path
    when 'img/white_pawn.png'
      if piece.y == 480 # Starting position
        moves << { x: piece.x, y: piece.y - 160 } # Allow two squares forward
      end
      moves << { x: piece.x, y: piece.y - 80 } # Allow one square forward

    when 'img/black_pawn.png'
      if piece.y == 80 # Starting position
        moves << { x: piece.x, y: piece.y + 160 } # Allow two squares forward
      end
      moves << { x: piece.x, y: piece.y + 80 } # Allow one square forward

    when 'img/white_rook.png', 'img/black_rook.png'
      (-7..7).each do |i|
        moves << { x: piece.x + i * 80, y: piece.y } if i != 0 # Horizontal moves
        moves << { x: piece.x, y: piece.y + i * 80 } if i != 0 # Vertical moves
      end

    when 'img/white_knight.png', 'img/black_knight.png'
      knight_moves = [
        { x: -160, y: -80 }, { x: -160, y: 80 },
        { x: -80, y: -160 }, { x: -80, y: 160 },
        { x: 80, y: -160 }, { x: 80, y: 160 },
        { x: 160, y: -80 }, { x: 160, y: 80 }
      ]
      knight_moves.each do |move|
        moves << { x: piece.x + move[:x], y: piece.y + move[:y] }
      end

    when 'img/white_bishop.png', 'img/black_bishop.png'
      (-7..7).each do |i|
        moves << { x: piece.x + i * 80, y: piece.y + i * 80 } if i != 0 # Diagonal moves
        moves << { x: piece.x + i * 80, y: piece.y - i * 80 } if i != 0 # Diagonal moves
      end

    when 'img/white_queen.png', 'img/black_queen.png'
      (-7..7).each do |i|
        moves << { x: piece.x + i * 80, y: piece.y } if i != 0 # Horizontal moves
        moves << { x: piece.x, y: piece.y + i * 80 } if i != 0 # Vertical moves
        moves << { x: piece.x + i * 80, y: piece.y + i * 80 } if i != 0 # Diagonal moves
        moves << { x: piece.x + i * 80, y: piece.y - i * 80 } if i != 0 # Diagonal moves
      end

    when 'img/white_king.png', 'img/black_king.png'
      king_moves = [
        { x: -80, y: -80 }, { x: -80, y: 0 }, { x: -80, y: 80 },
        { x: 0, y: -80 },                     { x: 0, y: 80 },
        { x: 80, y: -80 }, { x: 80, y: 0 },  { x: 80, y: 80 }
      ]
      king_moves.each do |move|
        moves << { x: piece.x + move[:x], y: piece.y + move[:y] }
      end

    end

    moves
  end
end
