paren_str = File.open('input1.txt').read

floor = 0

# Part one
paren_str.each_char do |c|
  floor = floor + 1 if c == '('
  floor = floor - 1 if c == ')'
end

puts "Answer for part 1: #{floor}"

# Part two
floor = 0
paren_str.each_char.with_index(1) do |c, index|
  floor = floor + 1 if c == '('
  floor = floor - 1 if c == ')'
  if floor < 0
    puts "Answer for part two: #{index}"
    break
  end
end
