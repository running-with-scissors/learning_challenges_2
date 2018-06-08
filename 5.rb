# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

# for a number
# check if it divides by 1
#   add 1 and check until you reach a lim
#   if it passes every step => output
#   if it fails number + 1 and start over


number = 1 #starting number
lim = 20 #limit of factors to check
factor = 1 #starting value for factor

def meets_my_condition(number, lim)
  (1..lim).each { |factor| return false unless is_factor?(number, factor) }
end

def is_factor?(number, factor)
  number % factor == 0
end

loop do
  break if meets_my_condition(number, lim)
  number += 1
end

puts number



#
#   factor += 1
#     unless number % factor == 0
#       number += 1
#       factor = 1
#       next
#     end
#   break if factor == lim
# end
#
# puts number
