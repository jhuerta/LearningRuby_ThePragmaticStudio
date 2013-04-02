module MovieReviewer
	def self.roll_die
		rand(1..6)
	end
	
	def self.ReviewMovie(movie)
		movie.thumbsUp if  roll_die > 3
		movie.thumbsDown if  roll_die < 3
	end
end