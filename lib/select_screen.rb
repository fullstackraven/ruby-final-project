require 'ruby2d'

LOGO_WIDTH = 400
LOGO_HEIGHT = 200

PLAYER_SELECTION_WIDTH = 200
PLAYER_SELECTION_HEIGHT = 100

class SelectScreen
  def initialize
    title_text = Image.new(
      'img/chess_logo.png',
      y: 40,
      width: LOGO_WIDTH,
      height: LOGO_HEIGHT,
      z: 2
    )
    title_text.x = (Window.width - title_text.width) / 2

    @players = [
      multi_player = Image.new('img/multi_player.png', x: (Window.width - 200) / 2, y: 300,
                                                       width: PLAYER_SELECTION_WIDTH, height: PLAYER_SELECTION_HEIGHT),
      single_player = Image.new('img/single_player.png', x: (Window.width - 200) / 2, y: 450,
                                                         width: PLAYER_SELECTION_WIDTH, height: PLAYER_SELECTION_HEIGHT)
    ]

    @selected_player = 0

    add_player_masks
  end

  def move(direction)
    if direction == :up
      @selected_player = (@selected_player - 1) % 2
    else
      @selected_player = (@selected_player + 1) % 2
    end

    add_player_masks
  end

  def add_player_masks
    @player_masks && @player_masks.each { |mask| mask.remove }

    @player_masks = @players.each_with_index.map do |player, index|
      if index == @selected_player
        color = [0.5, 0.5, 0.5, 0.6]
        z = -1
      else
        color = [0.0, 0.0, 0.0, 0.6]
        z = 2
      end

      Rectangle.new(
        size: 80,
        x: player.x,
        y: player.y,
        color: color,
        z: z
      )
    end
  end

  def selected_player
    @players[@selected_player]
  end
end
