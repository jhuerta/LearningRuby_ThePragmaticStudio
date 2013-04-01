
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
		
	
end

class CoolMovie
	def initialize(_title, _rank = 10)
		@title = _title.capitalize
		@rank = _rank
	end
	
	def title=(newTitle)
		@title = newTitle
	end
	
	def title
		@title
	end
	
	def normalize_rank
		@rank/5
	end
	
	def to_s
		puts "#{@title} has a rank of #{normalize_rank}"
	end
	
	attr_accessor :rank
	attr_reader :title
	attr_writer :title
	
end

# movie = Movie.new("goonies")
# coolMovie = CoolMovie.new("goonies")
# p movie.title
# p movie.rank
# movie.title = "New Movie"
# p movie.title
# 
# p coolMovie.title
# p coolMovie.rank
# coolMovie.title = "New title"
# coolMovie.rank = 15
# p coolMovie.title
# p coolMovie.rank

coolMovie = CoolMovie.new("goonies")
p coolMovie
p coolMovie.normalize_rank