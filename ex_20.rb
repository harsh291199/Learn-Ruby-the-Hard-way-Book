# Exercise 20: Functions and Files

input_file = ARGV.first

# print all lines
def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0)
end

# print specific line
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file:\n"
print_all(current_file)

puts "Now let's rewind, kind of like a tape."
rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file) # print first line

current_line += 1
print_a_line(current_line, current_file) # print second line

current_line += 1
print_a_line(current_line, current_file) # print third line

current_line += 1
print_a_line(current_line, current_file) # print fourth line
