# 2x2
# whenever it reaches a node it has 2 choices, Right or Down
# factorial for choosing (a+b)! / a! = a+b C a

def factorial(number)
  (1..number).reduce(:*)
end

def total_possible_paths(a, b)
  factorial(a+b)/(factorial(a)*factorial(b))
end

puts total_possible_paths(2,2)
puts total_possible_paths(20,20)
