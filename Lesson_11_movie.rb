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

# This is a trick to execute ONLY if I'm calling this file, but it's not executed when I include dthis file in other files
if __FILE__ == $0
goonies = Movie.new("goonies")
ghostbuster = Movie.new("ghostbuster", 30)
puts goonies
puts ghostbuster
goonies.thumbsUp
ghostbuster.thumbsUp
puts goonies
puts ghostbuster
end
