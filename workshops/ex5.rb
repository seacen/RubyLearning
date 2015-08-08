# Exercise 5
def num_regex_matches(string, regex)
  string.scan(regex).size
end

# test:
# p num_regex_matches('adfadffgsaddfada', /a/)
