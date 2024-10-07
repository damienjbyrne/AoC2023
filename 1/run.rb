# frozen_string_literal: true

data = File.read('data.txt')

calibration_values = data.lines.map do |line|
  nums = line.chars.select { |c| c =~ /\d/ }
  (nums.first + nums.last).to_i
end

puts calibration_values.sum
