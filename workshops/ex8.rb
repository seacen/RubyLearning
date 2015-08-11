def unique_lines
  a1 = []
  a2 = []
  IO.foreach('exercise_8_1.txt') { |line| a1 << line.chomp }
  IO.foreach('exercise_8_2.txt') { |line| a2 << line.chomp }

  a1.concat(a2)
  a1.uniq!
end

# p unique_lines
