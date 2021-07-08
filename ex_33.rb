# Exercise 33: While Loops

i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts 'Numbers now: ', numbers
  puts "At the bottom i is #{i}"
end

puts 'The numbers: '

# Display the numbers with .each{ }
numbers.each { |num| puts num }

# Two other ways to display the numbers
puts 'With .each and do method'
numbers.each do |number|
  puts number
end
