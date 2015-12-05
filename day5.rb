strings = []
File.open('inputs/day5.txt').each do |line|
  strings.push(line)
end

nice_count = 0

# Part one
strings.each do |str|
  vowel_count = 0
  last_char = ''
  has_double = false
  has_forbidden = false
  str.each_char do |c|
    if (c =='a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
      vowel_count = vowel_count + 1
    end
    has_double = true if (c == last_char)
    if (last_char == 'a' && c == 'b' || last_char == 'c' && c == 'd' ||
      last_char == 'p' && c == 'q' || last_char == 'x' && c == 'y')
      has_forbidden = true
    end
    last_char = c
  end
  nice_count = nice_count + 1 if (!has_forbidden && has_double && vowel_count >= 3)
end

puts "Answer for part 1: #{nice_count}" # 238
