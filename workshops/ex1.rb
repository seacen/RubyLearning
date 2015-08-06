# Exercise 1
class Creature
  attr_reader :x_pos, :y_pos, :health

  def initialize
    @x_pos = 0
    @y_pos = 0
    @health = 100
  end

  def move_forward
    @x_pos += 10
  end

  def get_distance_from_centre
    Math.sqrt(@x_pos**2 + @y_pos**2)
  end

  def move_right
    @y_pos += 10
  end
end

# test:

# seacen = Creature.new
# puts seacen.x_pos
# puts seacen.get_distance_from_centre
# seacen.move_forward
# puts seacen.x_pos
