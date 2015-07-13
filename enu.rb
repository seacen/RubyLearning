triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

def infinite_select(enum)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if yield(value)
    end
  end
end

p infinite_select(triangular_numbers) {|val| val % 7 == 0}.first(5)