block =
"08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48"

length = 4
numbers_array = block.split("\n").map {|row| row.split(" ").map {|number| number.to_i}}

def horizontal_scanning(numbers_array)
  horizontal_products = []
  index = 0
  while index + 4 <= numbers_array.count
    horizontal_products << numbers_array.map { |line| line[index]*line[index+1]*line[index+2]*line[index+3] }.max
    index += 1
  end
  horizontal_products.max
end

max_horizontal = numbers_array.map do |row|
  row.each_cons(length).map { |group| group.reduce(&:*) }.max
end

def vertical_scanning(numbers_array)
  vertical_products = []
  index = 0
  while index + 4 <= numbers_array.count
    vertical_products << numbers_array.transpose.map { |line| line[index]*line[index+1]*line[index+2]*line[index+3]}.max
    index += 1
  end
  vertical_products.max
end

def diagonal_scanning(numbers_array)
  diag_grid_refs = []
  diag_products = []
  diag_array = numbers_array.map.with_index do |line, l_index|
    line.map.with_index do |number, n_index|
      diag_grid_refs << [number, l_index, n_index]
    end
  end
  diag_products = diag_grid_refs.map {|number, l_index, n_index| number * numbers_array[l_index+1][n_index+1] * numbers_array[l_index+2][n_index+2] * numbers_array[l_index+3][n_index+3] if n_index + 3 < numbers_array.length && l_index + 3 < numbers_array.length}
  diag_products.compact.max
end

def reverse_diagonal_scanning(numbers_array)
  reverse_diag_grid_refs = []
  reverse_diag_products = []
  reverse_numbers_array = numbers_array
  diag_array = reverse_numbers_array.map.with_index do |line, l_index|
    line.map.with_index do |number, n_index|
      reverse_diag_grid_refs << [number, l_index, n_index]
    end
  end
  reverse_diag_products = reverse_diag_grid_refs.map {|number, l_index, n_index| number * reverse_numbers_array[l_index-1][n_index+1] * reverse_numbers_array[l_index-2][n_index+2] * reverse_numbers_array[l_index-3][n_index+3] if n_index + 3 < reverse_numbers_array.length && l_index - 3 < numbers_array.length}
  reverse_diag_products.compact.max
end

hp = horizontal_scanning(numbers_array)
vp = vertical_scanning(numbers_array)
dp = diagonal_scanning(numbers_array)
rdp = reverse_diagonal_scanning(numbers_array)

puts "Highest horizontal product = #{hp}"
puts "Highest vertical product = #{vp}"
puts "Highest diagonal product = #{dp}"
puts "Highest reverse diagonal product = #{rdp}"

highest_product = [hp, vp, dp, rdp].max

puts "The highest product is #{highest_product}"
