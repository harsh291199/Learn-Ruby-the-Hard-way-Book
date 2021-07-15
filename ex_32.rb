# Exercise 32: Loops and Arrays

# arrays with numbers, strings and mix of both
the_count = [1, 2, 3, 4, 5]
fruits = %w[Apples Oranges Pears Apricots]
change = [1, 'Pennies', 2, 'Dimes', 3, 'Quarters']

# for loop is used
for i in the_count
  puts "This is count #{i}"
end

# .each method is used
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# .each method but in different syntax
change.each { |n| puts "I got #{n}"}

# Empty Array
elements = []

# (0..5)-> 0,1,2,3,4,5
(0..5).each do |n|
  elements.push(n)
end
elements.each { |n| puts "Element is: #{n}"}

# (6..10)->6,7,8,9,10
(6..10).each { |n| elements.push(n) }
elements.each do |n|
  puts "Element is #{n}"
end
