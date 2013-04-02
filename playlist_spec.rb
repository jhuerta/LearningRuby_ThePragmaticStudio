require_relative 'playlist'

describe PlayList do
	before do
		@playList = PlayList.new("Kermit")
	end
	
	context "being played with one movie" do
		before do
			@initial_rank = 10
			@movie = Movie.new("goonies", @initial_rank)
			@playList.AddMovie(@movie)
		end
		
		it "gives the movie a thumbs up if a high number is rolled" do
			MovieReviewer.stub(:roll_die).and_return(4)
			#@playList.stub(:roll_die).and_return(5)
			@playList.play
			@movie.rank.should == @initial_rank + 1 
		end
		
		it "gives the movie a thumbs down if a low number is rolled" do
			MovieReviewer.stub(:roll_die).and_return(1	)
			#@playList.stub(:roll_die).and_return(1)
			@playList.play
			@movie.rank.should == @initial_rank - 1 
		end
		
		it "skips the movie if a medium number is rolled" do
			MovieReviewer.stub(:roll_die).and_return(3)
			#@playList.stub(:roll_die).and_return(3)
			@playList.play
			@movie.rank.should == @initial_rank
		end
	end



end