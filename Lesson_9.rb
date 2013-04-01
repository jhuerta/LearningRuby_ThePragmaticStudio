class Movie
	def initialize(_title, _rank = 10)
		@title = _title.capitalize
		@rank = _rank
	end
	
	def title
		@title
	end
	
	def rank
		@rank
	end
	
	def title=(newTitle)
		@title = newTitle
	end
	
	def to_s
		"The movie #{@title} has rank #{@rank}"
	end
	
	def thumbsUp
		@rank+=1
	end
		
	
end 

seats = ["one", "two", "three"]
asientos = %w(uno dos tres)
p seats[0]
p seats[1]
p seats[2]
p seats[50]
p seats

p asientos[0]
p asientos[1]
p asientos[2]
p asientos[50]
p asientos

numbers = []
numbers[0] = 0
numbers[1] = 1
numbers[2] = 1
numbers[4] = 4
numbers.push(6)
numbers << 666
p numbers
p "Length is #{numbers.length}"
p "Size is #{numbers.size}"
p "Count is #{numbers.count}"
p numbers.pop
p "Count after popping is #{numbers.count}"

goonie = Movie.new("Goonies")
ghostbuster = Movie.new("Ghostbuster")
goneWithTheWind = Movie.new("Gone with the wind")

movies = [goonie, ghostbuster,goneWithTheWind]
puts movies
movies.each do |movie|
	movie.thumbsUp
end
puts "I have modified each of the array"
puts movies