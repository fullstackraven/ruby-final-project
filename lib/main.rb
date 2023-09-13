require 'ruby2d'
require_relative 'piece'
require_relative 'chessboard'
require_relative 'ai_opponent'
require_relative 'move_validator'
require_relative 'overlay_manager'
require_relative 'select_screen'
require_relative 'game_logic'

# Initialize the game window
set title: 'Chess Game'
set background: 'black'
set width: 640
set height: 640

# Set current screen to player select screen
@current_screen = SelectScreen.new

# Handle key events on Select Screen
on :key_down do |event|
  case @current_screen
  when SelectScreen
    case event.key
    when 'up'
      @current_screen.move(:up)
    when 'down'
      @current_screen.move(:down)
    when 'return'
      Window.clear
      # Initialize gameplay
      # Initialize the current turn as the player's turn
      @current_turn = 'player'
      # Create the chessboard and pieces
      @current_screen = Chessboard.new
      @current_screen.setup_pieces
      # Create an instance of MoveValidator
      @move_validator = MoveValidator.new(@current_screen)
      # Create an instance of OverlayManager
      @overlay_manager = OverlayManager.new
      # Create an instance of GameLogic
      @game_logic = GameLogic.new(@current_screen, @current_turn, @move_validator)
      # Define the current selected piece
      @selected_piece = nil
      # Define the current drag offset
      @drag_offset_x = 0
      @drag_offset_y = 0

      # Check for stalemate and checkmate conditions before the game loop starts
      if @game_logic.checkmate?
        puts "Checkmate! Player wins!"
      elsif @game_logic.stalemate?
        puts "Stalemate! The game is a draw."
      end
    end
  end
end

# Handle mouse click events
on :mouse_down do |event|
  if @current_turn == 'player'
    # Check if a piece is clicked
    selected_piece = @current_screen.chessboard.find { |piece|
      piece.image.contains?(event.x, event.y) && piece.color == 'white'
    }

    if selected_piece
      # Store the selected piece for the update loop to handle its movement
      @selected_piece = selected_piece
      @selected_piece_x = selected_piece.x
      @selected_piece_y = selected_piece.y
      @drag_offset_x = event.x - selected_piece.x
      @drag_offset_y = event.y - selected_piece.y
      selected_piece.image.z = 2
      @overlay_manager.select_overlay(@current_turn, @selected_piece.x, @selected_piece.y)
    end
  end

  if @current_turn == 'player 2'
    # Check if a piece is clicked
    selected_piece = @current_screen.chessboard.find { |piece|
      piece.image.contains?(event.x, event.y) && piece.color == 'white'
    }

    if selected_piece
      # Store the selected piece for the update loop to handle its movement
      @selected_piece = selected_piece
      @selected_piece_x = selected_piece.x
      @selected_piece_y = selected_piece.y
      @drag_offset_x = event.x - selected_piece.x
      @drag_offset_y = event.y - selected_piece.y
      selected_piece.image.z = 2
      @overlay_manager.select_overlay(@current_turn, @selected_piece.x, @selected_piece.y)
    end
  end
end

on :mouse_up do |event|
  if @current_turn == 'player' && @selected_piece
    # Calculate the target square based on the mouse release position
    @target_square_x = (event.x / 80).to_i * 80
    @target_square_y = (event.y / 80).to_i * 80

    # Check if the target square is a valid move for the selected piece
    if @move_validator.valid_move?(@current_turn, @selected_piece, @target_square_x, @target_square_y)
      # Move the piece to the target square
      @selected_piece.move_to(@target_square_x, @target_square_y)
      @overlay_manager.move_overlay(@current_turn, @target_square_x, @target_square_y)
      # Check if it's the AI's turn
      @current_turn = 'ai'
    else
      # Reset the piece position if the move is invalid
      @selected_piece.move_to(@selected_piece_x, @selected_piece_y)
    end

    # Clear the selected piece
    @selected_piece = nil
    @drag_offset_x = 0
    @drag_offset_y = 0
  end

  if @current_turn == 'player 2' && @selected_piece
    # Calculate the target square based on the mouse release position
    @target_square_x = (event.x / 80).to_i * 80
    @target_square_y = (event.y / 80).to_i * 80

    # Check if the target square is a valid move for the selected piece
    if @move_validator.valid_move?(@current_turn, @selected_piece, @target_square_x, @target_square_y)
      # Move the piece to the target square
      @selected_piece.move_to(@target_square_x, @target_square_y)
      @overlay_manager.move_overlay(@current_turn, @target_square_x, @target_square_y)
      # Check if it's the AI's turn
      @current_turn = 'player'
    else
      # Reset the piece position if the move is invalid
      @selected_piece.move_to(@selected_piece_x, @selected_piece_y)
    end

    # Clear the selected piece
    @selected_piece = nil
    @drag_offset_x = 0
    @drag_offset_y = 0
  end
end

ai_thinking = 0
ai_processing_times = [60, 120, 240, 360]
ai_player = AIPlayer.new('Black')

update do
  if ai_thinking % ai_processing_times.sample == 0
    ai_player.move(@current_turn, @overlay_manager, @move_validator, @current_screen)
    # Switch back to the player's turn
    @current_turn = 'player'
  end
  ai_thinking += 1

  if @selected_piece
    # Calculate the new position of the selected piece based on the current mouse position and drag offset
    new_x = (get :mouse_x) - @drag_offset_x
    new_y = (get :mouse_y) - @drag_offset_y

    # Move the piece to the new position
    @selected_piece.drag_to(new_x, new_y)
  end
end

show
