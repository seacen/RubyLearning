def longest_word(fname)
  text = IO.read(fname)
  text.split.max_by(&:length)
end

# p longest_word("exercise_9.txt")
