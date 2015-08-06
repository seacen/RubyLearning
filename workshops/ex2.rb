# Exercise 2

def odd_even_array(array)
  counts = { even: 0, odd: 0 }
  array.each do |number|
    if number.even?
      counts[:even] += 1
    else
      counts[:odd] += 1
    end
  end
  if counts[:even] > counts[:odd]
    :even
  else
    :odd
  end
end

def average(array)
  array.inject(:+).to_f / array.size
end

def sum_binary(array)
  array.inject(:+).to_s(2)
end

def flatten_array(array)
  new_a = []
  array.each do |a|
    a.each do |i|
      new_a << i
    end
  end
  new_a
end

# test:
# aoa=[['c','f','g'],[2,5,7],[34,56,67,89]]
# p flatten_array(aoa)
# array=[1,2,3,4]
# puts sum_binary(array)
# puts average(array)
# puts odd_even_array(array)
