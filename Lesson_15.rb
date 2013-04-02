require_relative 'movie'
require_relative 'playlist'

goonies = Movie.new("goonies")
godfather = Movie.new("godfather", 20)
ghostbuster = Movie.new("ghostbuster", 7)

a = Movie.new("a", 1)
b = Movie.new("b", 2)
c = Movie.new("c", 4)
d = Movie.new("d", 6)
e = Movie.new("e", 0)


actionMovies = PlayList.new("Action Movies")

actionMovies.AddMovie(a)
actionMovies.AddMovie(b)
actionMovies.AddMovie(c)
actionMovies.AddMovie(d)
actionMovies.AddMovie(e)

actionMovies.AddMovie(goonies)
actionMovies.AddMovie(godfather)
actionMovies.AddMovie(ghostbuster)

actionMovies.play(15)
actionMovies.printStats
