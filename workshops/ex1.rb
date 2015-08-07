# Exercise 1
class Creature
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

seacen = Creature.new
seacen.move_forward
puts seacen.get_distance_from_centre
