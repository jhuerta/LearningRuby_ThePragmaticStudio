require_relative 'Lesson_11_movie'

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