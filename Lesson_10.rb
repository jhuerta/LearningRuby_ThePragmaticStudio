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


class PlayList
	def initialize(_title)
		@title = _title.capitalize
		@movieList = []
	end
	
	def AddMovie(movie)
		@movieList.push(movie)
	end
	
	def play
		puts "#{@title}: "
		@movieList.each do |movie|
			movie.thumbsUp
			puts movie
		end
	end

end 


goonies = Movie.new("Goonies")
ghostBuster = Movie.new("ghostBuster")
goneWithTheWind = Movie.new("Gone with the wind")


playlist = PlayList.new("FunMovies")
playlist.AddMovie(goonies)
playlist.AddMovie(ghostBuster)
playlist.AddMovie(goneWithTheWind)
playlist.play
goonies.thumbsUp
playlist.play
