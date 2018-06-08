# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples_3_or_5(n)
    (1...n).map { |num| num if num%3 === 0 || num%5 === 0 }.compact.reduce(:+)
end

puts sum_multiples_3_or_5(10)

puts sum_multiples_3_or_5(1000)
