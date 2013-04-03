# class Snack
# 	attr_reader :name, :carbs
# 	def initialize(name, carbs)
# 		@name = name
# 		@carbs = carbs
# 	end

# 	def to_s
# 		"#{@name} has #{@carbs} carbohidrates"

# 	end
# end

Snack = Struct.new(:name, :carbs)

module SnackBar
	SNACKS = [
		Snack.new(:popcorn,20),
		Snack.new(:max,35),
		Snack.new(:bars,10),
		Snack.new(:soda,10),
		Snack.new(:pop,5)
	]

	def self.random
		SNACKS.sample
	end
end

if __FILE__ ==  $0
	snack = SnackBar.random
	puts "Your snack is #{snack.name} with carbs of #{snack.carbs}"
	# popcorn = Snack.new("popcorn",20)
	# max = Snack.new("max",35)
	# bars = Snack.new("bars",10)

	# bars.name = "Bars bars bars"
	# bars.carbs = "dsfsadf"

	# puts popcorn.name
	# puts max.carbs
	# puts "#{bars.name } has #{bars.carbs} carbohidrates"

	# puts SnackBar::SNACKS
end