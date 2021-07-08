# Exercise 38: Doing Things to Arrays

ten_things = 'Apples Oranges Crows Telephone Light Sugar'

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = %w[Day Night Song Frisbee Corn Banana Girl Boy]

while stuff.length != 12
  next_one = more_stuff.pop
  puts "Adding #{next_one} to ten things."
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "let's do some things with stuff."

puts stuff[1]
puts stuff[-2]
puts stuff[-1]
puts stuff.pop()
puts stuff.pop(3)
puts stuff.join(' ')
puts stuff[3..5].join('"#')
puts stuff[0..10].join(',')
puts stuff[4...8].join(',')