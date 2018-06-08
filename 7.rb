# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10 001st prime number?

# start with a s_number
# find the factors of that s_number
# if more factors than 1 and itself
# go to next s_number
# stop when you have found (limit) factors


s_number = 1

counter = 1
limit = 10001

def find_factors(number)
  sqrt_number = Math.sqrt(number).ceil
  (1..sqrt_number).map { |integer| integer if number%integer == 0 }.compact
end

while counter < limit do
  s_number += 1
    if find_factors(s_number).count == 1
      counter += 1
    end
end

puts "The #{counter}th prime is: #{s_number}"
