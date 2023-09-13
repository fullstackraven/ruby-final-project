require 'ruby2d'
# Chess piece class
class Piece
  attr_accessor :color, :image, :x, :y, :name, :z

  def initialize(color, image, x, y, name, z)
    @color = color
    @image = Image.new(image, x: x, y: y, width: 80, height: 80, z: z)
    @x = x
    @y = y
    @z = z
    @name = name
  end

  def move_to(x, y)
    @image.x = x
    @image.y = y
    @x = x
    @y = y
  end

  def drag_to(x, y)
    @image.x = x
    @image.y = y
    @image.z = @z + 1
  end
end
