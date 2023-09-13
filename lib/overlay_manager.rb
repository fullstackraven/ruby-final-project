class OverlayManager
  def initialize
    # Define the current move overlay
    @selected_overlay = nil
    @move_overlay = nil
  end

  def select_overlay(current_turn, piece_x, piece_y)
    # Remove existing selected overlay
    @selected_overlay&.remove

    # Calculate position of selected square
    if current_turn == 'player'
      x = piece_x
      y = piece_y
    elsif current_turn == 'ai'
      x = piece_x
      y = piece_y
    end

    # Create selected overlay shape
    @selected_overlay = Rectangle.new(x: x, y: y, width: 80, height: 80, color: 'yellow', opacity: 1)
  end

  def move_overlay(current_turn, piece_x, piece_y)
    # Remove existing move overlay
    @move_overlay&.remove

    # Calculate position of move square
    if current_turn == 'player'
      x = piece_x
      y = piece_y
    elsif current_turn == 'ai'
      x = piece_x
      y = piece_y
    end

    # Create move overlay shape
    @move_overlay = Rectangle.new(x: x, y: y, width: 80, height: 80, color: 'yellow', opacity: 0.5)
  end
end
