boxes = []
File.open('input2.txt').each do |line|
  boxes.push(line.split('x').map(&:to_i)) # convert AxBxC -> [A, B, C]
end

# Part One
total_sq_feet = 0
boxes.each do |box|
  total_sq_feet += 2*box[0]*box[1] + 2*box[1]*box[2] + 2*box[0]*box[2]
  max_index = box.each_with_index.max[1] # find the biggest value in the list
  slack = (box[0] * box[1] * box[2]) / box[max_index] # gives the smallest side's area
  total_sq_feet += slack
end

puts "Answer for part 1: #{total_sq_feet} sq. ft. of wrapping paper" # 1588178

# Part two
total_ribbon = 0
boxes.each do |box|
  # use the same principle as above to find the min perimeter
  max_index = box.each_with_index.max[1]
  ribbon_len = 2*box[0] + 2*box[1] + 2*box[2] - 2*box[max_index]
  bow_len = box[0] * box[1] * box[2]
  total_ribbon += bow_len + ribbon_len
end

puts "Answer to part 2: #{total_ribbon} ft. of ribbon" # 3783758
