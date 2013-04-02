require_relative 'movie'

movie = Movie.new("godfather", 10)
indyDay = Movie.new("Independence Day", 5)
#puts movie.rank == 10
#puts movie.rank >= 10
#puts movie.rank < 10

if movie.rank >= 10
	puts "Hit"
end

puts "Flopo" if indyDay.rank < 10

if movie.rank > 10
	puts "with branch Hit"
else
	puts "with branch Flop"
end

if indyDay.rank > 10
	puts "with branch Hit"
else
	puts "with branch Flop"
end