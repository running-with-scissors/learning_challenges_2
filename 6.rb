# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

def sum_of_squares(lim)
  (1..lim).map { |n| n**2 }.reduce(:+)
end

def square_of_sums(lim)
  (1..lim).map { |n| n }.reduce(:+)**2
end

def difference(a,b)
  a - b
end

num = 100
puts difference(square_of_sums(num), sum_of_squares(num))
