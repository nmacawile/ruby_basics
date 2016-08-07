class OrangeTree

	def initialize 
		@height = 0
		@age = 0
		@orangeCount = 0
	end	

	def oneYearPasses
		@orangeCount = 0
		if self.alive?			
			@age += 1
			if self.fruitBearing?
				@height += 11
				@orangeCount = (@age*1.2).to_i+rand(5)
				puts "This orange tree has grown a bit. There are #{@orangeCount} orange(s) waiting to be picked."
				puts "The tree is #{@age} year(s) old."			
			else
				@height += 18+rand(15)
				puts "This orange tree has grown a bit. It doesn't produce fruits yet."
				puts "The tree is #{@age} year(s) old."

			end
		else
			puts "This orange tree has died."
		end

	end	

	def countTheOranges
		if self.fruitBearing? and self.alive?
			puts "There are still #{@orangeCount} orange(s) waiting to be picked."
		else
			if not self.fruitBearing?
				puts "No oranges yet."				
			end

			if not self.alive?
				puts "It's dead. No more oranges."
			end
		end
	end

	def pickAnOrange
		if self.fruitBearing? and self.alive?
			if @orangeCount > 0
				@orangeCount -= 1
				puts "You picked an orange. There are still #{@orangeCount} orange(s) waiting to be picked."
			else
				puts "There's nothing to be picked. Come back next year."
			end
		else
			if not self.fruitBearing?
				puts "This tree doesn't bear fruits yet. Wait a few more years."
			end
			if not self.alive?
				puts "Tree's dead. No more oranges to pick."
			end
		end

	end

	def alive?
		if @age >= 30
			false
		else
			true
		end
	end

	def fruitBearing?
		if @age >= 5
			true
		else
			false
		end
	end

	def height
		puts "The tree is #{@height} inch(es) tall."
	end

	def age
		if self.alive?
			puts "The tree is #{@age} year(s) old."
		else
			puts "The tree was #{@age} year(s) old."
		end
	end
	#attr_accessor :height, :age

end

def showOptions
	puts "OPTIONS:"
	puts "p - pick an orange"
	puts "c - count the oranges" 
	puts "y - pass one year" 
	puts "h - get height" 
	puts "a - get age"
	puts "o - view options"
	puts "x - exit"
end

tree = OrangeTree.new

puts "THE INTERACTIVE ORANGE TREE".center 40
input = ''
showOptions
puts "What do you want to do?"
input = gets.chomp
while input != 'x' 
	if input == 'p'
		tree.pickAnOrange
	elsif input == 'c'
		tree.countTheOranges
	elsif input == 'y'
		tree.oneYearPasses
	elsif input == 'h'
		tree.height
	elsif input == 'a'
		tree.age
	elsif input == 'o'
		showOptions
	else
		puts "That's not a valid action."
	end

	puts "What do you want to do? [o - view options]"
	input = gets.chomp
end