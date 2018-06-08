# 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2**1000?
require "pry"
require "pry-byebug"

def sum_of_digits(n)
  binding.pry
  number = 2**n
  number.digits.reduce(:+)
end

puts sum_of_digits(15)
