# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

# 2 digits
# num1 = 90
# num2 = 90
# palindromes = []

#   while num1 < 100 && num2 < 100
#     puts "num1 = #{num1}", "num2 = #{num2}", num1*num2
#       if (num1 * num2).to_s == (num1 * num2).to_s.reverse!
#       palindromes << num1 * num2
#       end
#     num1 += 1
#       if num1 == 100
#         num1 = 90
#         num2 += 1
#       end
#       if num2 >= 100
#       num2 = 100
#       end
#   end
# largest_palindrome = palindromes.last
# puts "this is the largest palindrome #{largest_palindrome}"

# 3 digits
# num1 = 900
# num2 = 900
# palindromes = []

#   while num1 < 1000 && num2 < 1000
#     puts "num1 = #{num1}", "num2 = #{num2}", num1*num2
#       if (num1 * num2).to_s == (num1 * num2).to_s.reverse!
#       palindromes << num1 * num2
#       end
#     num1 += 1
#       if num1 == 1000
#         num1 = 900
#         num2 += 1
#       end
#       if num2 >= 1000
#       num2 = 1000
#       end
#   end
# largest_palindrome = palindromes.last
# puts "this is the largest palindrome #{largest_palindrome}"

# n digits
digits = 4

lim1 = 1 * 10**(digits)
lim2 = 1 * 10**(digits)

num1 = (0.9*lim1).floor
num2 = (0.9*lim2).floor
palindromes = []

  while num1 < lim1 && num2 < lim2
      # if (num1 * num2).to_s == (num1 * num2).to_s.reverse! #if you want to watch it go zoooom!
      palindromes <<  num1 * num2
      end
    num1 += 1
      if num1 == lim1
        num1 = (0.9*lim1).floor
        num2 += 1
      end
      if num2 >= lim2
      num2 = lim2
      end
  end
largest_palindrome = palindromes.last
puts "this is the largest palindrome #{largest_palindrome}"
