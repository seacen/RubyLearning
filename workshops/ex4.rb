def regex_sentence(string, action)
  pattern = /\A[A-Z][\w[[:punct:]]\s]+[[:punct:]]\z/
  action.call(pattern, string)
end

def regex_phone(string, action)
  # assumption: 10 digits number, start with 0, follow with a digit less than 9
  pattern = /^0[0-8]\d{8}$/
  action.call(pattern, string)
end

def regex_email(string, action)
  pattern = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
  action.call(pattern, string)
end

bool = lambda do |pattern, string|
  if pattern =~ string
    true
  else
    false
  end
end

# p regex_email('sff@seacen.com', bool)
# p regex_phone('0403427493', bool)
# p regex_sentence('Fuck you! you son of bitch.', bool)
