class MoveValidator
  def initialize(board)
    @board = board
  end

  def valid_move?(current_turn, piece, new_x, new_y)
    # Check if the move is within the boundaries of the @chessboard
    return false if new_x < 0 || new_x >= 640 || new_y < 0 || new_y >= 640

    # Check if there is another piece at the target position
    @piece_at_target = @board.piece_at(new_x, new_y)

    if @piece_at_target
      return false if piece.color == @piece_at_target.color
    end

    # Validate the move based on the piece type
    case piece.name
    when 'White Pawn'
      return valid_move_for_white_pawn?(piece, new_x, new_y)
    when 'Black Pawn'
      return valid_move_for_black_pawn?(piece, new_x, new_y)
    when 'White Rook', 'Black Rook'
      return valid_move_for_rook?(piece, new_x, new_y)
    when 'White Knight', 'Black Knight'
      return valid_move_for_knight?(piece, new_x, new_y)
    when 'White Bishop', 'Black Bishop'
      return valid_move_for_bishop?(piece, new_x, new_y)
    when 'White Queen', 'Black Queen'
      return valid_move_for_queen?(piece, new_x, new_y)
    when 'White King', 'Black King'
      return valid_move_for_king?(piece, new_x, new_y)
    else
      return false
    end

    true
  end

  def valid_move_for_white_pawn?(piece, new_x, new_y)
    # If at starting position allow two squares forward, otherwise one square forward
    return false unless (piece.y == 480 && (new_y - piece.y).abs == 160) || (new_y - piece.y).abs == 80

    return false if (new_y - piece.y).abs == 80 && new_x == piece.x && @piece_at_target # Check if moving forward and obstructed
    return false if (new_y - piece.y).abs == 160 && new_x == piece.x && @piece_at_target # Check if moving forward and obstructed

    if (new_x - piece.x).abs == 80
      # Check if capturing an opponent's piece diagonally
      if piece.y == 480
        return false if (new_y - piece.y).abs == 160
        # White pawns cannot move diagonally from starting position unless capturing
        return false unless @piece_at_target && @piece_at_target.color == 'black'

        @board.capture(@piece_at_target)
      else
        return false unless @piece_at_target && @piece_at_target.color == 'black'

        @board.capture(@piece_at_target)
      end
    elsif (new_x - piece.x).abs != 0
      # White pawns cannot move diagonally unless capturing
      return false
      # elsif new_y - piece.y == 80
      # Allow for en passant
      # return false unless @board.en_passant_available?
      # @board.capture(@board.en_passant_available)
    end

    return false unless new_y < piece.y

    true
  end

  def valid_move_for_black_pawn?(piece, new_x, new_y)
    #  If at starting position allow two squares forward, otherwise one square forward
    return false unless (piece.y == 80 && (new_y - piece.y).abs == 160) || (new_y - piece.y).abs == 80 # Check if moving one square forward

    return false if (new_y - piece.y).abs == 80 && new_x == piece.x && @piece_at_target # Check if moving forward and obstructed
    return false if (new_y - piece.y).abs == 160 && new_x == piece.x && @piece_at_target # Check if moving forward and obstructed

    if (new_x - piece.x).abs == 80
      if piece.y == 160
        return false if (new_y - piece.y).abs == 160
        # Check if capturing an opponent's piece diagonally
        return false unless @piece_at_target && @piece_at_target.color == 'white'

        @board.capture(@piece_at_target)
      else
        return false unless @piece_at_target && @piece_at_target.color == 'white'

        @board.capture(@piece_at_target)
      end
    elsif (new_x - piece.x).abs != 0
      # Black pawns cannot move diagonally unless capturing
      return false
      # elsif (new_y - piece.y).abs == 80 || (new_y - piece.y).abs == 160 && piece_at_target
      # Check obstruction on single forward move
      # return false
    end

    return false unless new_y > piece.y

    true
  end

  def valid_move_for_rook?(piece, new_x, new_y)
    # Rooks can only move horizontally or vertically
    return false unless piece.x == new_x || piece.y == new_y

    # Check for obstructions along the horizontal path
    if piece.y == new_y
      x_range = [piece.x, new_x].min + 1...[piece.x, new_x].max
      return false if @board.chessboard.any? { |p| p != piece && x_range.include?(p.x) && p.y == piece.y }
    end

    # Check for obstructions along the vertical path
    if piece.x == new_x
      y_range = [piece.y, new_y].min + 1...[piece.y, new_y].max
      return false if @board.chessboard.any? { |p| p != piece && y_range.include?(p.y) && p.x == piece.x }
    end

    if @piece_at_target && @piece_at_target.color != piece.color
      @board.capture(@piece_at_target)
    end

    true
  end

  def valid_move_for_knight?(piece, new_x, new_y)
    # Knights can move in an L-shape: 2 squares in one direction and 1 square in the other
    x_distance = (new_x - piece.x).abs
    y_distance = (new_y - piece.y).abs

    return false unless (x_distance == 80 && y_distance == 160) || (x_distance == 160 && y_distance == 80)

    if @piece_at_target && @piece_at_target.color != piece.color
      @board.capture(@piece_at_target)
    end

    true
  end

  def valid_move_for_bishop?(piece, new_x, new_y)
    # Bishops can only move diagonally
    return false unless (new_x - piece.x).abs == (new_y - piece.y).abs

    # Check for obstructions along the diagonal path
    x_range = [piece.x, new_x].min + 1...[piece.x, new_x].max
    y_range = [piece.y, new_y].min + 1...[piece.y, new_y].max
    return false if @board.chessboard.any? { |p| p != piece && x_range.include?(p.x) && y_range.include?(p.y) }

    if @piece_at_target && @piece_at_target.color != piece.color
      @board.capture(@piece_at_target)
    end

    true
  end

  def valid_move_for_queen?(piece, new_x, new_y)
    # Queens can move horizontally, vertically, or diagonally
    return valid_move_for_rook?(piece, new_x, new_y) || valid_move_for_bishop?(piece, new_x, new_y)

    if @piece_at_target && @piece_at_target.color != piece.color
      @board.capture(@piece_at_target)
    end
  end

  def valid_move_for_king?(piece, new_x, new_y)
    # Kings can move one square in any direction
    return (new_x - piece.x).abs <= 1 && (new_y - piece.y).abs <= 1

    if @piece_at_target && @piece_at_target.color != piece.color
      @board.capture(@piece_at_target)
    end
  end
end
