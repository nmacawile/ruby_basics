require_relative 'chapter9_example'

def showOptions
  puts "OPTIONS:"
  puts "f - feed"
  puts "t - toss" 
  puts "w - walk" 
  puts "b - put to bed" 
  puts "r - rock"
  puts "o - view options"
  puts "x - exit"
end

pet = Dragon.new "Bob"

puts "THE INTERACTIVE DRAGON".center 40
input = ''
showOptions
puts "What do you want to do?"
input = gets.chomp
while input != 'x' 
  if input == 'f'
    pet.feed
  elsif input == 't'
    pet.toss
  elsif input == 'w'
    pet.walk
  elsif input == 'b'
    pet.putToBed
  elsif input == 'r'
    pet.rock
  elsif input == 'o'
    showOptions
  else
    puts "That's not a valid action."
  end

  puts "What do you want to do? [o - view options]"
  input = gets.chomp
end