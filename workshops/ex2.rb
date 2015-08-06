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

  if counts[:even]>counts[:odd]
    :even
  else
    :odd
  end
end

# test:
# puts odd_even_array([1,9,27,6,8,14,18])
