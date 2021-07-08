# Exercise 30: Else and If

people = 30
cars = 40
trucks = 15

if cars > people
  puts 'We should take the cars'
elsif cars < people
  puts 'We should not take the cars.'
else
  puts "We acn't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts 'Maybe we could take the trucks.'
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end

# Just a practice code
puts "\n"

a = 40
b = 45
c = 50

if a > b && a > c
  puts "#{a} is greater than other numbers."
elsif b > a && b > c
  puts "#{b} is greater than other numbers."
elsif c > a && c > b
  puts "#{c} is greater than other numbers."
else
  puts "#{a},#{b} and #{c} are same numbers."
end
