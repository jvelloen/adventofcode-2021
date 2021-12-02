#!/usr/bin/env ruby

input = File.readlines('input.txt')

horizontal = depth = 0

input.each do |row|
  instruction = row.split(" ")
  horizontal += instruction[1].to_i if instruction[0] == "forward"
  depth += instruction[1].to_i if instruction[0] == "down"
  depth -= instruction[1].to_i if instruction[0] == "up"
end

puts "#{horizontal * depth}"

horizontal = depth = aim = 0

input.each do |row|
  instruction = row.split(" ")
  case instruction[0]
  when "forward"
    horizontal += instruction[1].to_i
    depth += (instruction[1].to_i * aim)
  when "down"
    aim += instruction[1].to_i
  when"up"
    aim -= instruction[1].to_i
  end
end

puts "#{horizontal * depth}"
