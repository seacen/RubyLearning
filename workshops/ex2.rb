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

# test:
# array=[1,2,3,4]
# puts average(array)
# puts odd_even_array(array)
