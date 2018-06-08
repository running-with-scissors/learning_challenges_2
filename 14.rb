# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

def create_chain(number)
  chain = [number]
  if number % 10000 == 0
      puts number
  end
  until number == 1
    if number.odd?
      chain << 3*number + 1
      number = 3*number + 1
      next
    elsif number.even?
      chain << number / 2
      number = number/2
      next
    end
  end
  chain
end

def find_largest_chain(number)
largest_chain = []
current_chain = []
  while number > 1
    current_chain = create_chain(number)
      if current_chain.count > largest_chain.count
      largest_chain = current_chain
      # puts largest_chain.inspect
      end
    number -= 1
  end
  largest_chain
  puts "this is your number #{largest_chain.first}"
end

number = 1000000
find_largest_chain(number)
