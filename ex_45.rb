# Left door
def devil_cave
  puts 'Here you see the one devil'
  puts 'He stares at you and go insane'
  puts 'What will you do?'
  puts 'Do you flee for your life or kill that devil with a weapon?'

  print '>>> '
  choice = $stdin.gets.chomp

  if choice.include? 'flee'
    flee_for_life
  elsif choice.include? 'kill'
    puts 'You can go now.'
    diamond_room
  else
    dead('The devil will kill you')
  end
end

# Right door
def lion_cave
  puts 'Here you see the one lion.'
  puts 'The lion is watching you and is about to eat you'
  puts 'What will you do?'
  puts 'Flee for life or Going to move the lion?'
  lion_moved = false

  while true
    print '>>> '
    choice = $stdin.gets.chomp
    if choice == 'Flee for life'
      flee_for_life
    elsif choice == 'Going to move the lion' && !lion_moved
      puts 'The lion has moved from the cave. You can go now.'
      lion_moved = true
      gold_room
    else
      dead('The lion will eat you')
    end
  end
end

# Diamond room
def diamond_room
  puts 'Here you will find a treasure of diamonds.'
  puts 'Take it and go outside the cave.'
  exit(0)
end

# Gold room
def gold_room
  puts 'Here you will find a treasure of gold.'
  puts 'Take it and go outside the cave.'
  exit(0)
end

# You will survive
def flee_for_life
  puts 'Now you have survived!'
  puts 'What will you do now?'
  puts 'Will find treasure again? Yes or No?'
  print '>>> '
  choice = $stdin.gets.chomp
  if choice == 'Yes'
    start
  else
    puts 'Now you should go home, Bye!'
    exit(0)
  end
end

# You will be killed
def dead(string)
  puts string, 'You will go to heaven!'
  exit(0)
end

# start the journey for search of treasure
def start
  puts 'You come in search of treasure and you stand outside a cave'
  puts 'There is a door to your right and left.'
  puts 'Which one do you take?'
  print '>>> '
  choice = $stdin.gets.chomp

  if choice == 'left'
    devil_cave
  elsif choice == 'right'
    lion_cave
  else
    die("You keep wandering around the cave you won't find the treasure")
  end
end

start
