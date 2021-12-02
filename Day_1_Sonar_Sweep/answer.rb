#!/usr/bin/env ruby

input = File.readlines('input.txt').map(&:to_i)

count1 = count2 = 0
current = input[0]
i = 3

input.each do |depth|
  count1 += 1 if depth > current
  current = depth
end 

puts count1

until i == input.length do
  count2 += 1 if ( input[i] + input[i-1] + input[i-2] ) > ( input[i-1] + input[i-2] + input[i-3] )
  i += 1
end

puts count2
