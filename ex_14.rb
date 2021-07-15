# Exercise 14: Prompting and Passing

user_name = ARGV.first # gets the first argument
prompt = '>>>'

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
puts prompt
likes = $stdin.gets.chomp

puts 'What is your age'
puts prompt
age = $stdin.gets.chomp.to_i

puts "Where do you live #{user_name}? "
puts prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts 'What kind of computer do you have? ', prompt
computer = $stdin.gets.chomp

puts "
Alright, so you said #{likes} about liking me.
Your age is #{age}.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"
