paren_str = File.open('inputs/day1.txt').read

floor = 0

# Part one
paren_str.each_char do |c|
  floor = floor + 1 if c == '('
  floor = floor - 1 if c == ')'
end

puts "Answer for part 1: #{floor}" # 232

# Part two
floor = 0
paren_str.each_char.with_index(1) do |c, index|
  floor = floor + 1 if c == '('
  floor = floor - 1 if c == ')'
  if floor < 0
    puts "Answer for part 2: #{index}" # 1783
    break
  end
end
