require_relative 'Lesson_11_playlist'
require_relative 'Lesson_11_movie'

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
