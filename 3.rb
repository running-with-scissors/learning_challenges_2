# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

#attempt # 2
# number = 13195 #=> 29
number = 600851475143 #=> 6857

def find_factors(number)
  sqrt_number = Math.sqrt(number).ceil
  (1..sqrt_number).map { |integer| integer if number%integer == 0 }.compact
end

def find_prime_factors(factors)
  factors.map { |factor| factor if find_factors(factor).count == 1 }.compact.last
end

largest_prime = find_prime_factors(find_factors(number))

#and a test!!
# def test_one
#   number = 45
#    if find_prime_factors(find_factors(number)) == 5
#      puts "PASS"
#   else
#     puts "FAIL"
#   end
# end



# for a number;
# find all factors (just prime factors?)
# create a hash of factors?
# find prime factors
# find largest prime factor

def find_factors(number)
  factors = []
  (1..number).each do |n|
    if number%n === 0
      factors << n
    end
  end
  factors
end

def find_prime_factors(f)
  factorsof = f.map { |n| find_factors(n)}
  factorsof.map { |n| n if n.count == 2 }.compact
end

sqrt = Math.sqrt(600851475143)

largest_prime = find_prime_factors(find_factors(sqrt)).last[1]
# => largest_prime = 29

# largest_prime = find_prime_factors(find_factors(600851475143)).last[1]
# => largest_prime = ???

#thanks bilal! <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# def find_factor(number)
#   (1..number).map { |n| n if number%n === 0 }.compact
# end
