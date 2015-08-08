# Exercise 6
def call_block(proc)
  if proc.class != Proc
    return :no_block_provided
  end
  proc.call
end

# b = -> { p 'y' }
#
# call_block(b)
