# Exercise 29: What If (if-statement)

people = 20
cats = 30
dogs = 15

puts 'Too many cats! The world is doomed!' if people < cats

puts 'Not many cats! The world is saved!' if people > cats

puts 'The world is dry.' if people < dogs

dogs += 10
people += 10

puts 'People are greater than or equal to dogs.' if people >= dogs

puts 'People are lesser then or equal to dogs.' if people <= dogs

puts 'People are dogs.' if people == dogs
