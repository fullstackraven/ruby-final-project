  # current_screen = SelectScreen.new
  # @piece_selected = false
  # @piece_moved = false

  # update do
  #   if @piece_moved
  #     current_screen.update
  #   end
  # end

  # on :key_down do |event|
  #   case current_screen
  #   when SelectScreen
  #     case event.key
  #     when 'left'
  #       current_screen.move(:left)
  #     when 'right'
  #       current_screen.move(:right)
  #     when 'return'
  #       set background: 'black'
  #       Window.clear
  #       current_screen = GameScreen.new(current_screen.selected_player)
  #     end
  #   end

  #   case current_screen
  #   when GameScreen
  #     case event.key
  #     when 'escape'
  #         set background: 'gray'
  #         Window.clear
  #         current_screen = SelectScreen.new
  #     end
  #   end
  # end

  # on :mouse_down do |event|
  #   case current_screen
  #   when GameScreen
  #     case event.button
  #     when :left
  #       if @piece_selected
  #         current_screen.move(event.x, event.y)
  #         @piece_selected = false
  #         @piece_moved = true
  #       else
  #         current_screen.select(event.x, event.y)
  #         @piece_selected = true
  #       end
  #     end
  #   end
  # end

  # require_relative 'white_board'
  # require_relative 'black_board'
  # require_relative 'select_screen'
  # require_relative 'game_screen'
  # require_relative 'pawn'
  # require_relative 'rook'
  # require_relative 'knight'
  # require_relative 'bishop'
  # require_relative 'queen'
  # require_relative 'king'
  # class Piece
  #     def initialize(color, position)
  #       @color = color
  #       @position = position
  #     end

  #     def select_piece(x, y)
  #         col = ((x - @border_size) / @square_size).floor
  #         row = ((y - @border_size) / @square_size).floor
  #         @selected_piece = @game_board[row][col] if @game_board[row][col]&.strip != ''
  #       end

  #       def move_piece(x, y)
  #         col = ((x - @border_size) / @square_size).floor
  #         row = ((y - @border_size) / @square_size).floor

  #         if @selected_piece && valid_move?(@selected_row, @selected_col, row, col)
  #           @game_board[row][col] = @selected_piece
  #           @game_board[@selected_row][@selected_col] = ' '
  #           @selected_piece = nil
  #         end
  #       end

  #       def valid_move?(start_row, start_col, end_row, end_col)
  #         piece = @game_board[start_row][start_col]

  #         # check if the piece is moving to the same position
  #         return false if start_row == end_row && start_col == end_col

  #         # check if the piece is actually moving
  #         return false if piece.nil?

  #         # check if the piece is moving to a valid position on the board
  #         return false unless end_row.between?(0, 7) && end_col.between?(0, 7)

  #         # check if the piece is moving to a valid position for that piece
  #         valid_moves = get_valid_moves(start_row, start_col)
  #         return false unless valid_moves.include?([end_row, end_col])

  #         true
  #       end

  #     def get_valid_moves(board)
  #       # abstract method, implemented by each specific piece
  #     end
  #   end
  # @white_pieces.white_pawn1.x, @white_pieces.white_pawn1.y = @square_a + 10, @square_7
  #     @white_pieces.white_pawn2.x, @white_pieces.white_pawn2.y = @square_b + 10, @square_7
  #     @white_pieces.white_pawn3.x, @white_pieces.white_pawn3.y = @square_c + 10, @square_7
  #     @white_pieces.white_pawn4.x, @white_pieces.white_pawn4.y = @square_d + 10, @square_7
  #     @white_pieces.white_pawn5.x, @white_pieces.white_pawn5.y = @square_e + 10, @square_7
  #     @white_pieces.white_pawn6.x, @white_pieces.white_pawn6.y = @square_f + 10, @square_7
  #     @white_pieces.white_pawn7.x, @white_pieces.white_pawn7.y = @square_g + 10, @square_7
  #     @white_pieces.white_pawn8.x, @white_pieces.white_pawn8.y = @square_h + 10, @square_7
  #     @white_pieces.white_rook.x, @white_pieces.white_rook.y = @square_a + 10, @square_8
  #     @white_pieces.white_knight.x, @white_pieces.white_knight.y = @square_b, @square_8
  #     @white_pieces.white_bishop.x, @white_pieces.white_bishop.y = @square_c, @square_8
  #     @white_pieces.white_queen.x, @white_pieces.white_queen.y = @square_d, @square_8
  #     @white_pieces.white_king.x, @white_pieces.white_king.y = @square_e, @square_8
  #     @white_pieces.white_bishop2.x, @white_pieces.white_bishop2.y = @square_f, @square_8
  #     @white_pieces.white_knight2.x, @white_pieces.white_knight2.y = @square_g, @square_8
  #     @white_pieces.white_rook2.x, @white_pieces.white_rook2.y = @square_h + 10, @square_8

  # @white_pieces.white_pawn1.x, @white_pieces.white_pawn1.y = @square_a + 10, @square_2
  # @white_pieces.white_pawn2.x, @white_pieces.white_pawn2.y = @square_b + 10, @square_2
  # @white_pieces.white_pawn3.x, @white_pieces.white_pawn3.y = @square_c + 10, @square_2
  # @white_pieces.white_pawn4.x, @white_pieces.white_pawn4.y = @square_d + 10, @square_2
  # @white_pieces.white_pawn5.x, @white_pieces.white_pawn5.y = @square_e + 10, @square_2
  # @white_pieces.white_pawn6.x, @white_pieces.white_pawn6.y = @square_f + 10, @square_2
  # @white_pieces.white_pawn7.x, @white_pieces.white_pawn7.y = @square_g + 10, @square_2
  # @white_pieces.white_pawn8.x, @white_pieces.white_pawn8.y = @square_h + 10, @square_2
  # @white_pieces.white_rook.x, @white_pieces.white_rook.y = @square_a + 10, @square_1
  # @white_pieces.white_knight.x, @white_pieces.white_knight.y = @square_b, @square_1
  # @white_pieces.white_bishop.x, @white_pieces.white_bishop.y = @square_c, @square_1
  # @white_pieces.white_queen.x, @white_pieces.white_queen.y = @square_d, @square_1
  # @white_pieces.white_king.x, @white_pieces.white_king.y = @square_e, @square_1
  # @white_pieces.white_bishop2.x, @white_pieces.white_bishop2.y = @square_f, @square_1
  # @white_pieces.white_knight2.x, @white_pieces.white_knight2.y = @square_g, @square_1
  # @white_pieces.white_rook2.x, @white_pieces.white_rook2.y = @square_h + 10, @square_1

  # @black_pieces.black_pawn1.x, @black_pieces.black_pawn1.y = @square_a + 10, @square_7
  # @black_pieces.black_pawn2.x, @black_pieces.black_pawn2.y = @square_b + 10, @square_7
  # @black_pieces.black_pawn3.x, @black_pieces.black_pawn3.y = @square_c + 10, @square_7
  # @black_pieces.black_pawn4.x, @black_pieces.black_pawn4.y = @square_d + 10, @square_7
  # @black_pieces.black_pawn5.x, @black_pieces.black_pawn5.y = @square_e + 10, @square_7
  # @black_pieces.black_pawn6.x, @black_pieces.black_pawn6.y = @square_f + 10, @square_7
  # @black_pieces.black_pawn7.x, @black_pieces.black_pawn7.y = @square_g + 10, @square_7
  # @black_pieces.black_pawn8.x, @black_pieces.black_pawn8.y = @square_h + 10, @square_7
  # @black_pieces.black_rook.x, @black_pieces.black_rook.y = @square_a + 10, @square_8
  # @black_pieces.black_knight.x, @black_pieces.black_knight.y = @square_b, @square_8
  # @black_pieces.black_bishop.x, @black_pieces.black_bishop.y = @square_c, @square_8
  # @black_pieces.black_queen.x, @black_pieces.black_queen.y = @square_d, @square_8
  # @black_pieces.black_king.x, @black_pieces.black_king.y = @square_e, @square_8
  # @black_pieces.black_bishop2.x, @black_pieces.black_bishop2.y = @square_f, @square_8
  # @black_pieces.black_knight2.x, @black_pieces.black_knight2.y = @square_g, @square_8
  # @black_pieces.black_rook2.x, @black_pieces.black_rook2.y = @square_h + 10, @square_8

  # @black_pieces.black_pawn1.x, @black_pieces.black_pawn1.y = @square_a + 10, @square_2
  # @black_pieces.black_pawn2.x, @black_pieces.black_pawn2.y = @square_b + 10, @square_2
  # @black_pieces.black_pawn3.x, @black_pieces.black_pawn3.y = @square_c + 10, @square_2
  # @black_pieces.black_pawn4.x, @black_pieces.black_pawn4.y = @square_d + 10, @square_2
  # @black_pieces.black_pawn5.x, @black_pieces.black_pawn5.y = @square_e + 10, @square_2
  # @black_pieces.black_pawn6.x, @black_pieces.black_pawn6.y = @square_f + 10, @square_2
  # @black_pieces.black_pawn7.x, @black_pieces.black_pawn7.y = @square_g + 10, @square_2
  # @black_pieces.black_pawn8.x, @black_pieces.black_pawn8.y = @square_h + 10, @square_2
  # @black_pieces.black_rook.x, @black_pieces.black_rook.y = @square_a + 10, @square_1
  # @black_pieces.black_knight.x, @black_pieces.black_knight.y = @square_b, @square_1
  # @black_pieces.black_bishop.x, @black_pieces.black_bishop.y = @square_c, @square_1
  # @black_pieces.black_queen.x, @black_pieces.black_queen.y = @square_d, @square_1
  # @black_pieces.black_king.x, @black_pieces.black_king.y = @square_e, @square_1
  # @black_pieces.black_bishop2.x, @black_pieces.black_bishop2.y = @square_f, @square_1
  # @black_pieces.black_knight2.x, @black_pieces.black_knight2.y = @square_g, @square_1
  # @black_pieces.black_rook2.x, @black_pieces.black_rook2.y = @square_h + 10, @square_1

  # @white_pieces.white_pawn1.x, @white_pieces.white_pawn1.y = @square_a + 10, @square_7
  # @white_pieces.white_pawn2.x, @white_pieces.white_pawn2.y = @square_b + 10, @square_7
  # @white_pieces.white_pawn3.x, @white_pieces.white_pawn3.y = @square_c + 10, @square_7
  # @white_pieces.white_pawn4.x, @white_pieces.white_pawn4.y = @square_d + 10, @square_7
  # @white_pieces.white_pawn5.x, @white_pieces.white_pawn5.y = @square_e + 10, @square_7
  # @white_pieces.white_pawn6.x, @white_pieces.white_pawn6.y = @square_f + 10, @square_7
  # @white_pieces.white_pawn7.x, @white_pieces.white_pawn7.y = @square_g + 10, @square_7
  # @white_pieces.white_pawn8.x, @white_pieces.white_pawn8.y = @square_h + 10, @square_7
  # @white_pieces.white_rook.x, @white_pieces.white_rook.y = @square_a + 10, @square_8
  # @white_pieces.white_knight.x, @white_pieces.white_knight.y = @square_b, @square_8
  # @white_pieces.white_bishop.x, @white_pieces.white_bishop.y = @square_c, @square_8
  # @white_pieces.white_queen.x, @white_pieces.white_queen.y = @square_d, @square_8
  # @white_pieces.white_king.x, @white_pieces.white_king.y = @square_e, @square_8
  # @white_pieces.white_bishop2.x, @white_pieces.white_bishop2.y = @square_f, @square_8
  # @white_pieces.white_knight2.x, @white_pieces.white_knight2.y = @square_g, @square_8
  # @white_pieces.white_rook2.x, @white_pieces.white_rook2.y = @square_h + 10, @square_8

  # def select_white_piece(x, y)
  #   row, col = get_row_col(x, y)
  #   # p row, col
  #   if ('A'..'H').include?(col) && (1..8).include?(row)
  #     # Convert the letter column to a number
  #     col_num = col.ord - 'A'.ord

  #     # Get the piece at the specified location
  #     piece = @white_board[8 - row][col_num]

  #     # If a piece was found, create an image of it and store it for later
  #     if piece != ' '
  #       image_path = PIECE_IMAGES[piece]
  #       @selected_piece = Image.new(image_path, x: x - @square_size / 2, y: y - @square_size / 2, width: PIECE_WIDTH,
  #                                               height: PIECE_HEIGHT, z: 3)
  #       @selected_piece_row = row
  #       @selected_piece_col = col_num
  #     end
  #   end
  # end

  # def move_white_piece(x, y)
  #   row, col = get_row_col(x, y)
  #   if ('A'..'H').include?(col) && (1..8).include?(row)
  #     # Convert the letter column to a number
  #     col_num = col.ord - 'A'.ord

  #     # Get the piece at the specified location
  #     piece = @white_board[8 - row][col_num]

  #     # If the destination square is empty or contains a black piece, move the selected piece there
  #     if piece == ' ' || ('a'..'z').include?(piece)
  #       @white_board[8 - @selected_piece_row][@selected_piece_col] = ' '
  #       @white_board[8 - row][col_num] = 'P'
  #       @selected_piece.x = col_num * @square_size + @border_size
  #       @selected_piece.y = (@white_board.size - row - 1) * @square_size + @border_size
  #       @selected_piece_row = row
  #       @selected_piece_col = col_num
  #     end
  #   end
  #   @selected_piece = nil
  #   @selected_piece_row = nil
  #   @selected_piece_col = nil
  # end

  # def get_row_col(x, y)
  #   @square_row.each_with_index do |square, index|
  #     if x.between?(square[0], square[1])
  #       @row = index
  #       @row = 8 - @row
  #     end
  #     @row
  #   end

#   @square_col.each_with_index do |square, index|
#     if y.between?(square[0], square[1])
#       @col = index
#       @col = 'A'.ord + @col
#       @col = @col.chr
#     end
#     @col
#   end
#   return @row, @col
#   p @row, @col
# end

# Handle mouse click events
# on :mouse_down do |event|
#   if event.button == :left
#     if selected_piece.nil?
#       # Check if a piece is clicked
#       selected_piece = @chessboard.find { |piece| piece.image.contains?(event.x, event.y) }
#     else
#       # Move the selected piece to the clicked position if valid
#       new_x = (event.x / 80).to_i * 80
#       new_y = (event.y / 80).to_i * 80

#       # Perform basic validation for the move
#       if valid_move?(selected_piece, new_x, new_y)
#         selected_piece.move_to(new_x, new_y)
#       end

#       selected_piece = nil
#     end
#   end
# end

# Simple AI opponent
# def ai_opponent_move
#   return if @current_turn != 'ai'
#   # Get all available moves for the AI opponent
#   available_moves = []
#   @chessboard.each do |piece|
#     next unless piece.color == 'black' # Assuming AI plays as black

#     # Generate all possible moves for the piece
#     generate_moves(piece).each do |move|
#       available_moves << { piece: piece, move: move }
#     end
#   end

#   # Select a random move from the available moves
#   random_move = available_moves.sample

#   # Move the AI piece to the selected move
#   random_move[:piece].move_to(random_move[:move][:x], random_move[:move][:y])
# end

# Update the game loop
# update do
#   if @current_turn == 'player'
#       # new_x = (window.mouse_x / 80).to_i * 80
#       # new_y = (window.mouse_y / 80).to_i * 80

#       if valid_move?(@selected_piece, new_x, new_y)
#         @selected_piece.move_to(new_x, new_y)
#         @selected_piece = nil

#         # Check if the game is over
#         if checkmate?('black')
#           puts "Checkmate! Player wins!"
#           close
#         elsif stalemate?('black')
#           puts "Stalemate! The game is a draw."
#           close
#         end

#         # Switch to AI's turn
#         @current_turn = 'ai'
#       else
#         # Reset the selected piece position if the move is invalid
#         @selected_piece.move_to(@selected_piece_x, @selected_piece_y)
#         @selected_piece = nil

#         # Handle invalid move for the player
#         # Display an error message or perform some other action
#       end
#   end
# end

# def find_king(color)
#   king_piece = @chessboard.find { |piece| piece.name == "#{color.capitalize} King" }
#   return { x: king_piece.x, y: king_piece.y } if king_piece

#   nil
# end

# def valid_move?(piece, new_x, new_y)
#   # Check if the move is within the boundaries of the @chessboard
#   return false if new_x < 0 || new_x >= 640 || new_y < 0 || new_y >= 640

#   # Check if there is another piece at the target position
#   piece_at_target = @chessboard.find { |p| p != piece && p.x == new_x && p.y == new_y }
#   return false if piece_at_target

#   # Generate the valid moves for the piece
#   moves = generate_moves(piece)

#   # Check if the target position is in the list of valid moves
#   return moves.include?({ x: new_x, y: new_y })
# end

# Generate possible moves for a piece
# def generate_moves(piece)
#   moves = []

#   case piece.name
#   when 'White Pawn'
#     if piece.y == 480 # Starting position
#       moves << { x: piece.x, y: piece.y + 160 }
#     else
#       moves << { x: piece.x, y: piece.y + 80 }
#     end
#     moves << { x: piece.x - 80, y: piece.y + 80 }
#     moves << { x: piece.x + 80, y: piece.y + 80 }
#   when 'Black Pawn'
#     if piece.y == 80 # Starting position
#       moves << { x: piece.x, y: piece.y - 160 }
#     else
#       moves << { x: piece.x, y: piece.y - 80 }
#     end
#     moves << { x: piece.x - 80, y: piece.y - 80 }
#     moves << { x: piece.x + 80, y: piece.y - 80 }
#   when 'White Rook', 'Black Rook'
#     moves += generate_moves_horizontal_vertical(piece)
#   when 'White Knight', 'Black Knight'
#     moves += generate_moves_knight(piece)
#   when 'White Bishop', 'Black Bishop'
#     moves += generate_moves_diagonal(piece)
#   when 'White Queen', 'Black Queen'
#     moves += generate_moves_horizontal_vertical(piece)
#     moves += generate_moves_diagonal(piece)
#   when 'White King', 'Black King'
#     moves += generate_moves_king(piece)
#   end

#   moves
# end

# # Generate possible moves for a piece in horizontal and vertical directions
# def generate_moves_horizontal_vertical(piece)
#   moves = []

#   # Move left
#   x = piece.x - 80
#   while x >= 0
#     moves << { x: x, y: piece.y }
#     x -= 80
#   end

#   # Move right
#   x = piece.x + 80
#   while x < 640
#     moves << { x: x, y: piece.y }
#     x += 80
#   end

#   # Move up
#   y = piece.y - 80
#   while y >= 0
#     moves << { x: piece.x, y: y }
#     y -= 80
#   end

#   # Move down
#   y = piece.y + 80
#   while y < 640
#     moves << { x: piece.x, y: y }
#     y += 80
#   end

#   moves
# end

# # Generate possible moves for a knight
# def generate_moves_knight(piece)
#   moves = []

#   offsets = [
#     { dx: -160, dy: -80 }, { dx: -160, dy: 80 }, { dx: -80, dy: -160 }, { dx: -80, dy: 160 },
#     { dx: 80, dy: -160 }, { dx: 80, dy: 160 }, { dx: 160, dy: -80 }, { dx: 160, dy: 80 }
#   ]

#   offsets.each do |offset|
#     x = piece.x + offset[:dx]
#     y = piece.y + offset[:dy]
#     if x >= 0 && x < 640 && y >= 0 && y < 640
#       moves << { x: x, y: y }
#     end
#   end

#   moves
# end

# # Generate possible moves for a piece in diagonal directions
# def generate_moves_diagonal(piece)
#   moves = []

#   # Move up-left
#   x = piece.x - 80
#   y = piece.y - 80
#   while x >= 0 && y >= 0
#     moves << { x: x, y: y }
#     x -= 80
#     y -= 80
#   end

#   # Move up-right
#   x = piece.x + 80
#   y = piece.y - 80
#   while x < 640 && y >= 0
#     moves << { x: x, y: y }
#     x += 80
#     y -= 80
#   end

#   # Move down-left
#   x = piece.x - 80
#   y = piece.y + 80
#   while x >= 0 && y < 640
#     moves << { x: x, y: y }
#     x -= 80
#     y += 80
#   end

#   # Move down-right
#   x = piece.x + 80
#   y = piece.y + 80
#   while x < 640 && y < 640
#     moves << { x: x, y: y }
#     x += 80
#     y += 80
#   end

#   moves
# end

# # Generate possible moves for a king
# def generate_moves_king(piece)
#   moves = []

#   offsets = [
#     { dx: -80, dy: -80 }, { dx: -80, dy: 0 }, { dx: -80, dy: 80 },
#     { dx: 0, dy: -80 }, { dx: 0, dy: 80 },
#     { dx: 80, dy: -80 }, { dx: 80, dy: 0 }, { dx: 80, dy: 80 }
#   ]

#   offsets.each do |offset|
#     x = piece.x + offset[:dx]
#     y = piece.y + offset[:dy]
#     if x >= 0 && x < 640 && y >= 0 && y < 640
#       moves << { x: x, y: y }
#     end
#   end

#   moves
# end

# def valid_move?(piece, x, y, pieces)
#   # Check if the move is within the boundaries of the @chessboard
#   return false if x < 0 || x >= 640 || y < 0 || y >= 640

#   # Check if there is another piece at the target position
#   piece_at_target = pieces.find { |p| p != piece && p.x == x && p.y == y }
#   return false if piece_at_target

#   case piece.name
#   when 'White Pawn', 'Black Pawn'
#     # Pawns can only move forward
#     if piece.color == 'white'
#       return false if y <= piece.y  # Pawns cannot move backward
#       return false if y == piece.y - 1 && piece_at_target  # Pawns cannot capture forward
#       return false if y == piece.y - 2 && (piece_at_target || pieces.any? { |p| p.x == x && p.y == y + 1 })  # Pawns cannot move two squares forward if obstructed
#     elsif piece.color == 'black'
#       return false if y <= piece.y  # Pawns cannot move backward
#       return false if y == piece.y + 1 && piece_at_target  # Pawns cannot capture forward
#       return false if y == piece.y + 2 && (piece_at_target || pieces.any? { |p| p.x == x && p.y == y - 1 })  # Pawns cannot move two squares forward if obstructed
#     end
#   when 'White Rook', 'Black Rook'
#     # Rook moves horizontally or vertically, without jumping over other pieces
#     # Rook moves
#     return false if x != piece.x && y != piece.y  # Rook can only move in a straight line

#     # Check for any obstructing pieces along the path
#     if x != piece.x
#       min_x = [x, piece.x].min
#       max_x = [x, piece.x].max
#       return false if pieces.any? { |p| p.x == piece.x && p.y.between?(min_x, max_x) }
#     elsif y != piece.y
#       min_y = [y, piece.y].min
#       max_y = [y, piece.y].max
#       return false if pieces.any? { |p| p.y == piece.y && p.x.between?(min_y, max_y) }
#     end
#   when 'White Knight', 'Black Knight'
#     # Knight moves in an L shape
#     dx = (piece.x - x).abs
#     dy = (piece.y - y).abs
#     return false if !((dx == 2 && dy == 1) || (dx == 1 && dy == 2))
#   when 'White Bishop', 'Black Bishop'
#     # Bishop moves diagonally, without jumping over other pieces
#     return false if (piece.x - x).abs != (piece.y - y).abs
#     return false if pieces.any? { |p| p != piece && (piece.x - x).abs.times.any? { |i| pieces.any? { |p2| p2.x == piece.x + (x - piece.x).abs / (x - piece.x) * i && p2.y == piece.y + (y - piece.y).abs / (y - piece.y) * i } } }
#   when 'White Queen', 'Black Queen'
#     # Queen moves horizontally, vertically, or diagonally, without jumping over other pieces
#     # Queen moves
#     return false if x != piece.x && y != piece.y && (x - piece.x).abs != (y - piece.y).abs

#     # Check for any obstructing pieces along the path
#     if x != piece.x
#       min_x = [x, piece.x].min
#       max_x = [x, piece.x].max
#       min_y = [y, piece.y].min
#       max_y = [y, piece.y].max
#       return false if pieces.any? { |p| p.x.between?(min_x, max_x) && p.y.between?(min_y, max_y) }
#     elsif y != piece.y
#       min_y = [y, piece.y].min
#       max_y = [y, piece.y].max
#       return false if pieces.any? { |p| p.y.between?(min_y, max_y) && p.x.between?(min_x, max_x) }
#     end
#   when 'White King', 'Black King'
#     # King moves
#     dx = (piece.x - x).abs
#     dy = (piece.y - y).abs
#     return false if dx > 1 || dy > 1  # King can only move one square in any direction
#   end

#   true
# end
# require_relative 'board'

# class Bishop < Board
#     def initialize(color, position)
#       super(color, position)
#     end

#     def symbol
#       if @color == :white
#         "♗"
#       else
#         "♝"
#       end
#     end

#     def moves(board)
#       valid_moves = []
#       x, y = @position

#       # Check diagonals in all four directions
#       [[1, 1], [1, -1], [-1, 1], [-1, -1]].each do |dx, dy|
#         i, j = x + dx, y + dy

#         while (0..7).cover?(i) && (0..7).cover?(j)
#           if board[i][j].empty?
#             valid_moves << [i, j]
#           elsif board[i][j].color != @color
#             valid_moves << [i, j]
#             break
#           else
#             break
#           end

#           i += dx
#           j += dy
#         end
#       end

#       valid_moves
#     end
#   end

# class BlackBoard
#   BOARD_SIZE = 8
#   PIECE_WIDTH = 40
#   PIECE_HEIGHT = 40

#   PIECE_IMAGES = {
#     'r1' => 'img/black_rook.png',
#     'r2' => 'img/black_rook.png',
#     'n1' => 'img/black_knight.png',
#     'n2' => 'img/black_knight.png',
#     'b1' => 'img/black_bishop.png',
#     'b2' => 'img/black_bishop.png',
#     'q' => 'img/black_queen.png',
#     'k' => 'img/black_king.png',
#     'p1' => 'img/black_pawn.png',
#     'p2' => 'img/black_pawn.png',
#     'p3' => 'img/black_pawn.png',
#     'p4' => 'img/black_pawn.png',
#     'p5' => 'img/black_pawn.png',
#     'p6' => 'img/black_pawn.png',
#     'p7' => 'img/black_pawn.png',
#     'p8' => 'img/black_pawn.png',
#     'R1' => 'img/white_rook.png',
#     'R2' => 'img/white_rook.png',
#     'N1' => 'img/white_knight.png',
#     'N2' => 'img/white_knight.png',
#     'B1' => 'img/white_bishop.png',
#     'B2' => 'img/white_bishop.png',
#     'Q' => 'img/white_queen.png',
#     'K' => 'img/white_king.png',
#     'P1' => 'img/white_pawn.png',
#     'P2' => 'img/white_pawn.png',
#     'P3' => 'img/white_pawn.png',
#     'P4' => 'img/white_pawn.png',
#     'P5' => 'img/white_pawn.png',
#     'P6' => 'img/white_pawn.png',
#     'P7' => 'img/white_pawn.png',
#     'P8' => 'img/white_pawn.png'
#   }
#   attr_accessor :square_size, :border_size, :game_board

#   def initialize
#     @board = [
#       ['R1', 'N1', 'B1', 'Q', 'K', 'B2', 'N2', 'R2'],
#       ['P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7', 'P8'],
#       [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
#       [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
#       [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
#       [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
#       ['p1', 'p2', 'p3', 'p4', 'p5', 'p6', 'p7', 'p8'],
#       ['r1', 'n1', 'b1', 'q', 'k', 'b2', 'n2', 'r2']
#     ]

#     @border_size = 40
#     @square_size = (Window.width - 2 * @border_size) / BOARD_SIZE
#     @squares = []

#     # Draw the borders of the board and labels
#     Line.new(x1: @border_size, y1: @border_size, x2: Window.width - @border_size, y2: @border_size, width: 2,
#              color: 'brown', z: 2)
#     Line.new(x1: Window.width - @border_size, y1: @border_size, x2: Window.width - @border_size,
#              y2: Window.height - @border_size, width: 2, color: 'gray', z: 2)
#     Line.new(x1: Window.width - @border_size, y1: Window.height - @border_size, x2: @border_size,
#              y2: Window.height - @border_size, width: 2, color: 'gray', z: 2)
#     Line.new(x1: @border_size, y1: Window.height - @border_size, x2: @border_size, y2: @border_size, width: 2,
#              color: 'gray', z: 2)

#     BOARD_SIZE.times do |i|
#       x = @border_size / 2 - 5
#       y = @border_size + (BOARD_SIZE - i - 0.5) * @square_size - 10
#       Text.new((i + 1).to_s, x: x, y: y, size: 20, z: 2)

#       x = @border_size + (i + 0.5) * @square_size - 10
#       y = Window.height - @border_size / 2 - 15
#       Text.new(('A'.ord + i).chr, x: x, y: y, size: 20, z: 2)
#     end

#     # Draw the grid of the board
#     BOARD_SIZE.times do |row|
#       BOARD_SIZE.times do |col|
#         @square_color = (row + col).even? ? 'silver' : 'green'
#         x = @border_size + col * @square_size
#         y = @border_size + row * @square_size
#         @square = Square.new(x: x, y: y, size: @square_size, color: @square_color, opacity: 1)
#         @squares << @square
#       end
#     end

#     @game_board = []
#     @piece_images = []

#     @square_row = [
#       square_8 = [40, 50],
#       square_7 = 125,
#       square_6 = 202,
#       square_5 = 279,
#       square_4 = 356,
#       square_3 = 433,
#       square_2 = 510,
#       square_1 = 587
#     ]

#     @square_col = [
#       square_a = [40, 50],
#       square_b = 125,
#       square_c = 202,
#       square_d = 279,
#       square_e = 356,
#       square_f = 433,
#       square_g = 510,
#       square_h = 587
#     ]

#     @selected_overlay = nil
#     @move_overlay = nil
#   end

#   def set_board
#     @board.each_with_index do |row, row_index|
#       @new_row = []
#       row.each_with_index do |piece, col_index|
#         if piece == 'p' || piece == 'P'
#           x = (@border_size + col_index *  @square_size) + 15
#           y = (@border_size + row_index *  @square_size) + 15
#         else
#           x = (@border_size + col_index *  @square_size) + 15
#           y = (@border_size + row_index *  @square_size) + 15
#         end
#         if piece != ' '
#           image_file = PIECE_IMAGES[piece]
#           image = Image.new(image_file, x: x, y: y, width: PIECE_WIDTH, height: PIECE_HEIGHT, z: 2)
#           @new_row << { piece: piece, image: image }
#           @piece_images << image  # Store the image in @piece_images
#         else
#           @new_row << { piece: piece }
#         end
#       end
#       @game_board << @new_row
#     end
#   end

#   def select_piece(x, y)
#     @selected_col = ((x - @border_size) / @square_size).floor
#     @selected_row = ((y - @border_size) / @square_size).floor
#     @selected_piece = @board[@selected_row][@selected_col] if @board[@selected_row][@selected_col].is_a?(String) && @board[@selected_row][@selected_col].strip != ''

#     select_highlight
#   end

#   def select_highlight
#     # Remove existing selected overlay
#     @selected_overlay&.remove

#     # Calculate position of selected square
#     x = @border_size + @selected_col * @square_size
#     y = @border_size + @selected_row * @square_size

#     # Create selected overlay shape
#     @selected_overlay = Rectangle.new(x: x, y: y, width: @square_size, height: @square_size, color: 'yellow', opacity: 1)
#   end

#   def move_piece(x, y)
#     return unless @selected_piece.is_a?(String) && @selected_piece.strip != ''

#     @col = ((x - @border_size) / @square_size).floor
#     @row = ((y - @border_size) / @square_size).floor

#     @board.each_with_index do |board_row, row_index|
#       board_row.each_with_index do |piece, col_index|
#         if piece == @selected_piece
#           @piece_image_file = PIECE_IMAGES[@selected_piece]
#           @from_x = col_index * @square_size + @border_size + 15
#           @from_y = row_index * @square_size + @border_size + 15
#           @to_x = @col * @square_size + @border_size + 15
#           @to_y = @row * @square_size + @border_size + 15
#           @piece_image = Image.new(@piece_image_file, x: @to_x, y: @to_y, width: PIECE_WIDTH, height: PIECE_HEIGHT, z: 2)
#           @piece_images << @piece_image

#           # remove piece from original location
#           @board[row_index][col_index] = ' '

#           # Update the selected piece to an empty string
#           @selected_piece = ''

#           # animate piece to new location
#           steps = 1 # number of animation steps
#           @x_step = @to_x - @from_x
#           @y_step = @to_y - @from_y

#           @piece_image.x = @from_x
#           @piece_image.y = @from_y

#           # Store the original image position for removal
#           @original_image_x = col_index * @square_size + @border_size + 15
#           @original_image_y = row_index * @square_size + @border_size + 15

#           # Store the row and column indices for updating the game board
#           @row = row_index
#           @col = col_index

#           moved_highlight
#         end
#       end
#     end
#     # @selected_piece = nil
#   end

#   def moved_highlight
#     # Remove existing moved overlay
#     @moved_overlay&.remove

#     # Calculate position of moved square
#     x = @border_size + @to_x - @square_size + 10
#     y = @border_size + @to_y - @square_size + 10

#     # Create moved overlay shape
#     @moved_overlay = Rectangle.new(
#       x: x, y: y,
#       width: @square_size, height: @square_size,
#       color: 'yellow', opacity: 0.5,
#       z: 1  # Ensure the overlay is drawn above the board squares
#     )
#   end

#   def update
#     return unless @piece_image

#     @piece_image.x += @x_step
#     @piece_image.y += @y_step

#     if (@piece_image.x - @to_x).abs < 1 && (@piece_image.y - @to_y).abs < 1
#       # Update game board
#       @board[@row][@col] = @selected_piece
#       @selected_piece = nil

#       # Remove the original image from the board
#       @piece_images.each_with_index do |piece_image, index|
#         if piece_image.x == @original_image_x && piece_image.y == @original_image_y
#           piece_image.remove
#           @piece_images.delete_at(index)
#           break
#         end
#       end

#        # Reset the animation variables
#       @x_step = 0
#       @y_step = 0
#       @original_image_x = nil
#       @original_image_y = nil
#       @row = nil
#       @col = nil
#     end
#   end

#   def valid_move?(start_row, start_col, end_row, end_col)
#     piece = @board[start_row][start_col]

#     # check if the piece is moving to the same position
#     return false if start_row == end_row && start_col == end_col

#     # check if the piece is actually moving
#     return false if piece.nil?

#     # check if the piece is moving to a valid position on the board
#     return false unless end_row.between?(0, 7) && end_col.between?(0, 7)

#     # check if the piece is moving to a valid position for that piece
#     # valid_moves = get_valid_moves(start_row, start_col)
#     # return false unless valid_moves.include?([end_row, end_col])

#     true
#   end

#   def get_valid_moves(board)
#   # abstract method, implemented by each specific piece
#   end
# end

# class GameScreen

#   def initialize(player)
#     if player.x == 215
#       @board = WhiteBoard.new
#       @board.set_board
#       @current_player = 'white'
#     else
#       @board = BlackBoard.new
#       @board.set_board
#       @current_player = 'black'
#       @piece_moved = false
#     end
#   end

#   def select(x, y)
#     if @current_player == 'white'
#       @board.select_piece(x, y)
#     else
#       @board.select_piece(x, y)
#     end
#   end

#   def move(x, y)
#     if @current_player == 'white'
#         @board.move_piece(x, y)
#     else
#       @board.move_piece(x, y)
#       @piece_moved = true
#     end
#   end

#   def update
#     if @piece_moved
#       @board.update
#     end
#   end
# end

# require_relative 'board'

# class King < Board
#     def initialize(color, position)
#       super(color, position)
#       @symbol = color == :white ? "♔" : "♚"
#     end

#     def get_valid_moves(board)
#       valid_moves = []
#       x, y = @position

#       # Check all 8 directions
#       (-1..1).each do |i|
#         (-1..1).each do |j|
#           next if i == 0 && j == 0
#           new_x, new_y = x + i, y + j
#           next unless Board.valid_position?(new_x, new_y)
#           next if board.occupied?(new_x, new_y) && board.piece_at(new_x, new_y).color == @color

#           valid_moves << [new_x, new_y]
#         end
#       end

#       valid_moves
#     end
#   end

# require_relative 'board'

# class Knight < Board
#     def initialize(color, current_square)
#       super(color, current_square)
#       @name = 'Knight'
#       @unicode = color == :white ? "\u2658" : "\u265E"
#     end

#     def get_valid_moves(board)
#       valid_moves = []
#       directions = [[1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
#       directions.each do |dir|
#         destination = Square.new(@current_square.file + dir[0], @current_square.rank + dir[1])
#         if board.on_board?(destination) && (board.piece_at(destination).nil? || board.piece_at(destination).color != @color)
#           valid_moves << destination
#         end
#       end
#       valid_moves
#     end
#   end

# class Pawn < Board
#     def get_valid_moves(board)
#       valid_moves = []

#       direction = @color == "white" ? -1 : 1
#       initial_rank = @color == "white" ? 6 : 1

#       # check if pawn can move one or two squares forward
#       if board[@position[0] + direction][@position[1]] == " " # check one square ahead
#         valid_moves << [@position[0] + direction, @position[1]]
#         if @position[0] == initial_rank && board[@position[0] + (2 * direction)][@position[1]] == " " # check two squares ahead
#           valid_moves << [@position[0] + (2 * direction), @position[1]]
#         end
#       end

#       # check if pawn can capture diagonally
#       capture_moves = [[@position[0] + direction, @position[1] - 1], [@position[0] + direction, @position[1] + 1]]
#       capture_moves.each do |move|
#         if board[move[0]][move[1]] != " " && board[move[0]][move[1]].color != @color # check if there is an enemy piece to capture
#           valid_moves << move
#         end
#       end

#       valid_moves
#     end
#   end

# require_relative 'board'

# class Queen < Board
#     def initialize(color, x, y)
#       super(color, x, y)
#       @symbol = color == "white" ? "\u2655" : "\u265B"
#     end

#     def get_valid_moves(board)
#       valid_moves = []

#       # get valid moves along diagonal lines
#       [-1, 1].each do |x_dir|
#         [-1, 1].each do |y_dir|
#           (1..7).each do |steps|
#             x = @x + steps * x_dir
#             y = @y + steps * y_dir

#             break unless board.in_bounds?(x, y)

#             if board.empty?(x, y)
#               valid_moves << [x, y]
#             elsif board.occupied_by_opponent?(x, y, @color)
#               valid_moves << [x, y]
#               break
#             else
#               break
#             end
#           end
#         end
#       end

#       # get valid moves along vertical and horizontal lines
#       [[0, 1], [0, -1], [1, 0], [-1, 0]].each do |x_dir, y_dir|
#         (1..7).each do |steps|
#           x = @x + steps * x_dir
#           y = @y + steps * y_dir

#           break unless board.in_bounds?(x, y)

#           if board.empty?(x, y)
#             valid_moves << [x, y]
#           elsif board.occupied_by_opponent?(x, y, @color)
#             valid_moves << [x, y]
#             break
#           else
#             break
#           end
#         end
#       end

#       valid_moves
#     end
#   end
# require_relative 'board'

# class Rook < Board
#     def initialize(color, position)
#       super(color, position)
#       @symbol = color == :white ? "♖" : "♜"
#     end

#     def get_valid_moves(board)
#       valid_moves = []
#       directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
#       directions.each do |dx, dy|
#         x, y = position
#         loop do
#           x, y = x + dx, y + dy
#           break unless Board.valid_square?(x, y)
#           square = board[x][y]
#           if square.empty?
#             valid_moves << [x, y]
#           else
#             if square.piece.color != color
#               valid_moves << [x, y]
#             end
#             break
#           end
#         end
#       end
#       valid_moves
#     end
#   end

# class WhiteBoard
#     BOARD_SIZE = 8
#     PIECE_WIDTH = 300
#     PIECE_HEIGHT = 300

#     PIECE_IMAGES = {
#       'r' => 'img/black_rook.png',
#       'n' => 'img/black_L_knight.png',
#       'b' => 'img/black_bishop.png',
#       'q' => 'img/black_queen.png',
#       'k' => 'img/black_king.png',
#       'p1' => 'img/black_pawn.png',
#       'p2' => 'img/black_pawn.png',
#       'p3' => 'img/black_pawn.png',
#       'p4' => 'img/black_pawn.png',
#       'p5' => 'img/black_pawn.png',
#       'p6' => 'img/black_pawn.png',
#       'p7' => 'img/black_pawn.png',
#       'p8' => 'img/black_pawn.png',
#       'R' => 'img/white_rook.png',
#       'N' => 'img/white_L_knight.png',
#       'B' => 'img/white_bishop.png',
#       'Q' => 'img/white_queen.png',
#       'K' => 'img/white_king.png',
#       'P1' => 'img/white_pawn.png',
#       'P2' => 'img/white_pawn.png',
#       'P3' => 'img/white_pawn.png',
#       'P4' => 'img/white_pawn.png',
#       'P5' => 'img/white_pawn.png',
#       'P6' => 'img/white_pawn.png',
#       'P7' => 'img/white_pawn.png',
#       'P8' => 'img/white_pawn.png'
#     }
#     attr_accessor :square_row, :square_col, :square_size, :border_size, :game_board

#     def initialize
#       @board = [
#         ['r', 'n', 'b', 'q', 'k', 'b', 'n', 'r'],
#         ['p1', 'p2', 'p3', 'p4', 'p5', 'p6', 'p7', 'p8'],
#         [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
#         [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
#         [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
#         [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
#         ['P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7', 'P8'],
#         ['R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R']
#       ]

#       @border_size = 40
#       @square_size = (Window.width - 2 * @border_size) / BOARD_SIZE

#       # Draw the borders of the board and labels
#       Line.new(x1: @border_size, y1: @border_size, x2: Window.width - @border_size, y2: @border_size, width: 2,
#                color: 'black', z: 2)
#       Line.new(x1: Window.width - @border_size, y1: @border_size, x2: Window.width - @border_size,
#                y2: Window.height - @border_size, width: 2, color: 'black', z: 2)
#       Line.new(x1: Window.width - @border_size, y1: Window.height - @border_size, x2: @border_size,
#                y2: Window.height - @border_size, width: 2, color: 'black', z: 2)
#       Line.new(x1: @border_size, y1: Window.height - @border_size, x2: @border_size, y2: @border_size, width: 2,
#                color: 'black', z: 2)

#       BOARD_SIZE.times do |i|
#         x = @border_size / 2 - 5
#         y = @border_size + (BOARD_SIZE - i - 0.5) * @square_size - 10
#         Text.new((i + 1).to_s, x: x, y: y, size: 20, z: 2)

#         x = @border_size + (i + 0.5) * @square_size - 10
#         y = Window.height - @border_size / 2 - 15
#         Text.new(('A'.ord + i).chr, x: x, y: y, size: 20, z: 2)
#       end

#       # Draw the grid of the board
#       BOARD_SIZE.times do |row|
#         BOARD_SIZE.times do |col|
#           square_color = (row + col).even? ? 'white' : 'gray'
#           x = @border_size + col * @square_size
#           y = @border_size + row * @square_size
#           Square.new(x: x, y: y, size: @square_size, color: square_color)
#         end
#       end

#       @game_board = []
#       @piece_images = []

#       @square_row = [
#         square_8 = [40, 50],
#         square_7 = 125,
#         square_6 = 202,
#         square_5 = 279,
#         square_4 = 356,
#         square_3 = 433,
#         square_2 = 510,
#         square_1 = 587
#       ]

#       @square_col = [
#         square_a = [40, 50],
#         square_b = 125,
#         square_c = 202,
#         square_d = 279,
#         square_e = 356,
#         square_f = 433,
#         square_g = 510,
#         square_h = 587
#       ]
#     end

#     def set_board
#       @board.each_with_index do |row, row_index|
#         new_row = []
#         row.each_with_index do |piece, col_index|
#           if piece == 'p' || piece == 'P'
#             x = (@border_size + col_index *  @square_size) + 18
#             y = (@border_size + row_index *  @square_size) + 12
#           else
#             x = (@border_size + col_index *  @square_size) + 12
#             y = (@border_size + row_index *  @square_size) + 12
#           end
#           if piece != ' '
#             image_file = PIECE_IMAGES[piece]
#             image = Image.new(image_file, x: x, y: y, width: PIECE_WIDTH, height: PIECE_HEIGHT, z: 2)
#             new_row << { piece: piece, image: image }
#           else
#             new_row << { piece: piece }
#           end
#         end
#         @game_board << new_row
#       end
#     end

#     def select_piece(x, y)
#       @selected_col = ((x - @border_size) / @square_size).floor
#       p @selected_col
#       @selected_row = ((y - @border_size) / @square_size).floor
#       p @selected_row
#       @selected_piece = @board[@selected_row][@selected_col] if @board[@selected_row][@selected_col].is_a?(String) && @board[@selected_row][@selected_col].strip != ''
#       p @selected_piece
#     end

#     def move_piece(x, y)
#       col = ((x - @border_size) / @square_size).floor
#       row = ((y - @border_size) / @square_size).floor

#       @board.each_with_index do |board_row, row_index|
#         board_row.each_with_index do |piece, col_index|
#           if piece == @selected_piece
#             @piece_image_file = PIECE_IMAGES[@selected_piece]
#             x = col * @square_size + @border_size + 15
#             y = row * @square_size + @border_size + 15
#             @piece_image = Image.new(@piece_image_file, x: x, y: y, width: PIECE_WIDTH, height: PIECE_HEIGHT)
#             @piece_images << @piece_image

#             # remove piece from original location
#             @board[row_index][col_index] = ' '
#           end
#         end
#       end

#       # if @selected_piece && valid_move?(@selected_row, @selected_col, row, col)

#         # update game board
#         @board[row][col] = @selected_piece
#         @selected_piece = nil

#         @piece_images.each_with_index do |piece_image, index|
#           if @piece_image_file == PIECE_IMAGES[@selected_piece] && piece_image.x == @selected_col * @square_size + @border_size + 15 && piece_image.y == @selected_row * @square_size + @border_size + 15
#             piece_image.remove
#             @piece_images.delete_at(index)
#             break
#           end
#         end
#       # end
#     end

#     def valid_move?(start_row, start_col, end_row, end_col)
#       piece = @board[start_row][start_col]

#       # check if the piece is moving to the same position
#       return false if start_row == end_row && start_col == end_col

#       # check if the piece is actually moving
#       return false if piece.nil?

#       # check if the piece is moving to a valid position on the board
#       return false unless end_row.between?(0, 7) && end_col.between?(0, 7)

#       # check if the piece is moving to a valid position for that piece
#       valid_moves = get_valid_moves(start_row, start_col)
#       return false unless valid_moves.include?([end_row, end_col])

#       true
#     end

#     def get_valid_moves(board)
#     # abstract method, implemented by each specific piece
#     end
#   end

# def move(current_turn, overlay, move_validator, board)
#   return if current_turn != 'ai'

#   # Calculate the best move using the minimax algorithm
#   # best_move = best_move(board, 3)

#   # if best_move.nil?
#   #   # Handle the case where there are no legal moves for the current player
#   #   return nil
#   # end

#   # Select the piece to move
#   ai_selected_piece = board.chessboard.find { |piece| piece.x == best_move[:from].file * 80 && piece.y == best_move[:from].rank * 80 }

#   # Calculate the target square
#   ai_target_square_x = best_move[:to].file * 80
#   ai_target_square_y = best_move[:to].rank * 80

#   # Check if the target square is a valid move for the selected piece
#   if move_validator.valid_move?(ai_selected_piece, ai_target_square_x, ai_target_square_y)
#     # Move the piece to the target square
#     ai_selected_piece.move_to(ai_target_square_x, ai_target_square_y)
#     overlay.move_overlay(current_turn, ai_target_square_x, ai_target_square_y)
#   else
#     # Retry the AI opponent's move if the move is invalid
#     move(current_turn, overlay, move_validator, board)
#   end
# end

# def move(current_turn, overlay, board)
#   return if current_turn != 'ai'

#   # Get all legal moves for the AI player
#   legal_moves = board.legal_moves('black', current_turn)

#   # Select a random move from the legal moves
#   ai_move = legal_moves.sample

#   # Select the piece to move
#   ai_selected_piece = board.piece_at(ai_move.from)

#   # Calculate the target square
#   ai_target_square_x = ai_move.to.file * 80
#   ai_target_square_y = ai_move.to.rank * 80

#   # Move the piece to the target square
#   ai_selected_piece.move_to(ai_target_square_x, ai_target_square_y)
#   overlay.move_overlay(current_turn, ai_target_square_x, ai_target_square_y)
# end

# def best_move(board, depth)
#   best_score = -Float::INFINITY
#   best_move = nil

#   board.legal_moves.each do |move|
#     board.move(move)

#     score = minimax(board, depth - 1, false)
#     if score > best_score
#       best_score = score
#       best_move = move
#     end

#     board.undo_last_move
#   end

#   return best_move
# end

# def minimax(board, depth, maximizing_player)
#   if depth == 0 || board.game_over?
#     return evaluate_board(board)
#   end

#   if maximizing_player
#     max_eval = -Float::INFINITY
#     board.legal_moves.each do |move|
#       board.move(move)
#       eval = minimax(board, depth - 1, false)
#       board.undo_last_move
#       max_eval = [max_eval, eval].max
#     end
#     return max_eval
#   else
#     min_eval = Float::INFINITY
#     board.legal_moves.each do |move|
#       board.move(move)
#       eval = minimax(board, depth - 1, true)
#       board.undo_last_move
#       min_eval = [min_eval, eval].min
#     end
#     return min_eval
#   end
# end

# def evaluate_board(board)
#   piece_values = {
#     'P' => 1, 'N' => 3, 'B' => 3, 'R' => 5, 'Q' => 9, 'K' => 0, # Player's pieces
#     'p' => -1, 'n' => -3, 'b' => -3, 'r' => -5, 'q' => -9, 'k' => 0 # Opponent's pieces
#   }

#   score = 0
#   board.each do |rank|
#     rank.each do |piece|
#       score += piece_values[piece] if piece_values.key?(piece)
#     end
#   end

#   return score
# end

# def legal_moves(color, current_turn)
#   moves = []

#   @chessboard.each_with_index do |piece, index|
#     next if piece.nil? || piece.color != current_turn

#     # Call your existing move generation method here
#     piece_moves = generate_moves(piece, index)

#     moves += piece_moves
#   end

#   moves
# end

# def generate_moves(piece, index)
#   # Create a Chess::Board object and set up the board state
#   board = Chess::Board.new
#   # Set up the board state according to your existing piece positions

#   # Generate moves for the given piece
#   moves = []
#   position = Chess::Position.from_squares(index, piece.x / 80, piece.y / 80)
#   legal_moves = board.piece_at(position).moves(position)
#   legal_moves.each do |move|
#     moves << { x: move.to.file, y: move.to.rank }
#   end

#   moves
# end

# def valid_move_for_white_pawn?(piece, new_x, new_y)
#   # If at starting position allow two squares forward, otherwise one square forward
#   return false unless (piece.y == 480 && (new_y - piece.y).abs == 160) || (new_y - piece.y).abs == 80

#   return false if (new_y - piece.y).abs == 80 && new_x == piece.x && @piece_at_target # Check if moving forward and obstructed
#   return false if (new_y - piece.y).abs == 160 && new_x == piece.x && @piece_at_target # Check if moving forward and obstructed

#   if (new_x - piece.x).abs == 80
#     # Check if capturing an opponent's piece diagonally
#     return false unless @piece_at_target && @piece_at_target.color == 'black'
#       @board.capture(@piece_at_target)
#   elsif (new_x - piece.x).abs != 0
#     # White pawns cannot move diagonally unless capturing
#     return false
#   # elsif new_y - piece.y == 80
#     # Allow for en passant
#     # return false unless @board.en_passant_available?
#     # @board.capture(@board.en_passant_available)
#   end

#   return false unless new_y < piece.y

#   true
# end

#   def ai_opponent_move(chessboard)
#     available_moves = []
#     opponent_color = 'black'  # Assuming AI plays as black
#     opponent_pieces = chessboard.get_pieces(color: opponent_color)

#     opponent_pieces.each do |piece|
#       # Generate all possible moves for the piece
#       possible_moves = generate_moves(piece)

#       possible_moves.each do |move|
#         # Evaluate capturing opportunities
#         if chessboard.is_occupied?(move[:x], move[:y])
#           captured_piece = chessboard.get_piece(move[:x], move[:y])
#           piece_value = get_piece_value(captured_piece)
#           available_moves << { piece: piece, move: move, capture_value: piece_value }
#         else
#           available_moves << { piece: piece, move: move, capture_value: 0 }
#         end
#       end
#     end

#     # Sort available moves by capture value in descending order
#     available_moves.sort_by! { |move| -move[:capture_value] }

#     available_moves.each do |move|
#       # Check if the move defends any of the AI's pieces
#       defends_own_piece = false
#       ai_pieces = chessboard.get_pieces(color: 'white')  # Assuming AI plays as black
#       ai_pieces.each do |ai_piece|
#         if ai_piece.is_threatened?(chessboard, move[:move][:x], move[:move][:y])
#           defends_own_piece = true
#           break
#         end
#       end

#       if defends_own_piece
#         # Move defends AI's piece, make the move
#         move_piece(chessboard, move[:piece], move[:move][:x], move[:move][:y])
#         return
#       end

#       # Look ahead one move and evaluate resulting board positions
#       lookahead_board = chessboard.copy
#       move_piece(lookahead_board, move[:piece], move[:move][:x], move[:move][:y])

#       # Evaluate the board position after the AI's move and the opponent's likely response
#       opponent_best_move = evaluate_best_move(lookahead_board, opponent_color)
#       ai_best_move = evaluate_best_move(lookahead_board, 'white')  # Assuming AI plays as black

#       # Choose the move that leads to a more favorable position for the AI after the opponent's response
#       if ai_best_move[:evaluation] > opponent_best_move[:evaluation]
#         move_piece(chessboard, move[:piece], move[:move][:x], move[:move][:y])
#         return
#       end
#     end

#     # If no favorable moves are found, make a random move
#     random_move = available_moves.first
#     if random_move
#       move_piece(chessboard, random_move[:piece], random_move[:move][:x], random_move[:move][:y])
#     else
#       # Handle the case where no moves are available
#       puts "No available moves for the AI opponent."
#     end
#   end
