require_relative 'movie'
require_relative 'movie_reviewer'
require_relative 'snack_bar'

class PlayList
	def initialize(_title)
		@title = _title.capitalize
		@movieList = []
	end
	
	def AddMovie(movie)
		@movieList.push(movie)
	end
		
	def play(viewings)
		snack = SnackBar::SNACKS

		snack.each do |s|
			puts "#{s.name} and #{s.carbs} carbohidrates"
		end
		puts "There are #{snack.size} snacks"
		1.upto(viewings) do |count|
			puts "\nViewing #{count}: "
			@movieList.each do |movie|
				movie.ate_snack(SnackBar.random)
				MovieReviewer.ReviewMovie(movie)
				puts movie
			end		
		end 
	end
	
	def printStats 
		puts "\n#{@title}:"
		hits,flops = @movieList.partition { |m| m.hit?}
		puts "\n These are the hits:\n"
		puts hits.sort
		puts "\n These are the flops:\n"
		puts flops.sort
		
		puts "\n\n\n Greater than 2"
		greaterThan3 = @movieList.select { |m| m.rank > 2}
		puts greaterThan3.sort

		puts "\n\n\n Less than 5"
		lessThan5 = @movieList.select { |m| m.rank < 5}
		puts lessThan5.sort
		
		
	end
end 


roll_die = rand(1..10)
case 
	when roll_die < 3
		#puts "Less Than 3"
	when roll_die > 3
		#puts "More Than 3"
	else
		#puts "Its 3"
end
		
case roll_die
	when  1..2
		#puts "Less Than 3"
	when 4..6
		#puts "More Than 3"
	else
		#puts "Its 3"
end