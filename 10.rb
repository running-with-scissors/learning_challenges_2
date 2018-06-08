# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.


# for every number between 1..upto
# figure out if it is a prime
# save it to an array
# sum up the array

up_to = 10


def is_prime(number)
  sqrt_number = Math.sqrt(number).ceil
  if number.even? && number > 2
    return false
  elsif (1..sqrt_number).map { |integer| integer if number%integer == 0 }.compact.count == 1 || number == 2
    puts number
    return true
  else
    return false
  end
end

primes = (2..up_to).map {|a| a if is_prime(a) == true}.compact

puts primes.reduce(:+)
