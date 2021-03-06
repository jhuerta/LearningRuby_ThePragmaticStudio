class Movie
	def initialize(_title, _rank = 10)
		@title = _title.capitalize
		@rank = _rank
		@snack_carbs = Hash.new(0)
	end
	
	def ate_snack(snack)
		@snack_carbs[snack.name] += snack.carbs
		puts "I just ate #{snack.name} and total I have consumed #{@snack_carbs[snack.name]} calories"
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
		"The movie #{@title} has rank #{@rank} (#{status})"
	end
	
	def thumbsUp
		@rank+=1
	end	
	
	def thumbsDown
		@rank-=1
	end	
	
	def hit?
		rank > 10
	end	
	
	def status
		hit? ? "Hit" : "Flop"
		#if hit?
		#	"Hit"
		#else
		#	"Flop"
		#end
	end	
	
	def <=> (other_movie)
		self.rank  <=>  other_movie.rank
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
