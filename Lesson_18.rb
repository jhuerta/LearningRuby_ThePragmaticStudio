class Movie
	def initialize(_title)
		@title = _title.capitalize
		@snacks = []
	end

	def ate_snack(snack)
		@snacks << snack
		puts "Ate #{snack}"
	end

	def each_snack
		@snacks.each do |s|
			yield(s)
		end
	end


end

movie = Movie.new("Goonie")
movie.ate_snack("bar")
movie.ate_snack("mars")
movie.ate_snack("popcorn")

movie.each_snack do |snack|
	puts "The snack is #{snack}"
end