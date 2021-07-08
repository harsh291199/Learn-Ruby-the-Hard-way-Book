# Exercise 15: Reading files

filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

print 'Type the filename again: '
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read

# Practice

fname=ARGV.first

puts "Here is your file named #{fname}"
puts open(fname).read

puts 'Type the filename again: '
fname2 = $stdin.gets.chomp

puts "Here is your file again named #{fname2}"
puts open(fname2).read
