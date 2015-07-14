# written by seacen

def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end
5.times do |val|
  my_if(val < 2, -> { puts "#{val} is small" }, -> { puts "#{val} is big" })
end
# def Integer.all
#   Enumerator.new do |yielder, n: 0|
#     loop { yielder.yield(n += 1) }
#   end.lazy
# end
#
# p Integer.all.select { |i| (i % 3).zero? }.first(10)

# triangular_numbers = Enumerator.new do |yielder|
#   number = 0
#   count = 1
#   loop do
#     number += count
#     count += 1
#     yielder.yield number
#   end
# end.lazy
#
# def infinite_select(enum)
#   Enumerator.new do |yielder|
#     enum.each do |value|
#       yielder.yield(value) if yield(value)
#     end
#   end
# end
#
# p triangular_numbers.select { |val| val % 7 == 0 }
