# Exercise 12: Prompting People for Numbers

print 'Give me a number: '
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print 'Give me another number: '
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

# Practice

print 'Enter the amount you want to give me:'
money = gets.to_f

print "I will give you #{money * 0.1}\n"
