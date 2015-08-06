# Exercise 3
class DiceRoll
  attr_reader :num, :sides
  def initialize(num, sides)
    @num = num
    @sides = sides
  end

  def all_possibilities
    (1..@sides).to_a.repeated_combination(@num) { |c| p c }
  end

  def roll_dice
    prng = Random.new
    result = []
    @num.times { result << prng.rand(1..@sides) }
    p result
  end
end

# test:
# dice = DiceRoll.new(3, 7)
# dice.roll_dice
# dice.all_possibilities
