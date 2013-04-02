require_relative 'movie'

a = Movie.new("GodFather", 1)
b = Movie.new("goonies", 10)
c = Movie.new("ghostbuster", 5)
d = Movie.new("goneWithThewind", 15)

movieList = [a,b,c,d]
puts movieList.sort
puts "\nSorging Movies\n"
puts movieList.sort_by { |m| m.rank}
puts "\nReverse Sorging Movies\n"
puts movieList.sort_by { |m| m.rank}.reverse
puts "\nGeneral Comparison\n"
puts movieList.sort