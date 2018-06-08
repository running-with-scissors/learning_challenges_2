# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
#
# There exists exactly one Pythagorean triplet for which a**2 + b**2 + c**2 = 1000.
# Find the product abc.

pyth_value = 1000

pyth_limit = pyth_value #Math.sqrt(pyth_value).ceil
a = 150
b = 1
c = 1
#

def find_pythagorean_triplet(a, b, c, pyth_limit)
  while a <= pyth_limit
    #The following if evalutes the answer to the above question but can be omitted (or changed as necessary!
    if a < b && b < c && a**2 + b**2 == c**2 && a + b + c == 1000
      puts "you got it; a = #{a}, b = #{b}, c = #{c}"
      product = a*b*c
      puts "the product is: #{product}"
      break
    elsif a < b && b < c && a**2 + b**2 == c**2
      puts "you've found a Pythagorean Triplet! [#{a}, #{b}, #{c}]"
      c += 1

    elsif c < pyth_limit
      c += 1
      next
    elsif c == pyth_limit && b < pyth_limit
      b += 1
      c = b
      next
    elsif b == c && c < pyth_limit
      c += 1
      next
    elsif c == pyth_limit && b == pyth_limit && a < pyth_limit
      a += 1
      b = a
      c = b
      puts "a = #{a}"
      next
    end
  end
end

find_pythagorean_triplet(a, b, c, pyth_limit)
