# Exercise 21: Functions Can Return Something

def add(a, b)
  puts "Adding #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "Subtracting #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "Multiplying #{a}*#{b}"
  a * b
end

def divide(a, b)
  puts "Dividing #{a}/#{b}"
  a / b
end

puts "Let's do some math with just functions"

age = add(25, 5)
height = subtract(78, 8)
weight = multiply(30, 2)
iq = divide(140, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts 'Here is a puzzle.'

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}."
