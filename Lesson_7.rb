class Movie
	def initialize(_title, _rank=5)
		@title = _title.capitalize
		@rank = _rank
	end
	
	def listing
		"New Movie! Title: #{@title} - Rank: #{@rank} \#{@test}*"
	end
	
	def thumbs_up
		@rank +=1
		self
	end
	
	def thumbs_down
		@rank -=1
		self
	end
	
	def to_s
		listing
	end
end


movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbuster", 9)
movie3 = Movie.new("goldfinger")

puts movie1
puts movie2
puts movie3

movie1.thumbs_up
movie2.thumbs_up
movie3.thumbs_up.thumbs_up

puts movie1
puts movie2
puts movie3