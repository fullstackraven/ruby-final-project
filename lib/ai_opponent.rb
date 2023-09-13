require 'chess'

class AIPlayer
  def initialize(color)
    @color = color
  end

  # AI opponent's move
  def move(current_turn, overlay, move_validator, board)
    return if current_turn != 'ai'

    # Implement logic here to make the AI opponent's move

    # Placeholder implementation that moves a random piece

    # Select a random piece from the black pieces
    ai_random_piece = board.chessboard.select { |piece| piece.color == 'black' }.sample

    @ai_selected_piece_x =  ai_random_piece.x
    @ai_selected_piece_y =  ai_random_piece.y

    overlay.select_overlay(current_turn, @ai_selected_piece_x, @ai_selected_piece_y)

    # Calculate a random target square
    @ai_target_square_x = (rand(8) * 80)
    @ai_target_square_y = (rand(8) * 80)

    # Check if the target square is a valid move for the selected piece
    if move_validator.valid_move?(current_turn, ai_random_piece, @ai_target_square_x, @ai_target_square_y)
      # Move the piece to the target square
      ai_random_piece.move_to(@ai_target_square_x, @ai_target_square_y)
      overlay.move_overlay(current_turn, @ai_target_square_x, @ai_target_square_y)
    else
      # Retry the AI opponent's move if the move is invalid
      move(current_turn, overlay, move_validator, board)
    end
  end
end
