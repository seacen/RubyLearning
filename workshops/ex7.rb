def count_lines
  count = 0
  IO.foreach('exercise_7.txt') { count += 1 }
  count
end

# p count_lines
