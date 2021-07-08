# Exercise 40: Modules, Classes, and Objects

# Module
module MyStuff
  def apples
    puts 'I AM APPLES!'
  end
end

# class Stuff
class Stuff
  # Use of module in class
  include MyStuff
  def hello
    puts 'Hello'
  end
end

puts Stuff.new.apples # Here, (Stuff.new) is object of class 'Stuff'

#----------------------------------------------------------------------

# class
class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each { |line| puts line }
  end
end

bl =['Happy birthday to you', "I don't want to get sued", "I'll stop right"]
happy_bday = Song.new(bl) # Here,happy_bday is obejct of class

bop= ['They rally around tha family', 'With pockets full of sells']
bulls_on_parade = Song.new(bop)

happy_bday.sing_me_a_song # Access the function with the help of object
bulls_on_parade.sing_me_a_song
