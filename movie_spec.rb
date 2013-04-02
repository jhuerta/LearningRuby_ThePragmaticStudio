require_relative 'movie'

describe Movie do
	before do
		@initialRank = 10
		@initialTitle = "goonies"
		@movie = Movie.new(@initialTitle, @initialRank)
	end
	it "has a captitalized title" do
		@movie.title.should == @initialTitle.capitalize
	end
	
	it "has an initial rank" do
		@movie.rank.should == @initialRank
	end
	
	it "has an string representation" do
		capitalizedTitle = @initialTitle.capitalize
		expectedString = @movie.to_s
		expectedString.should == "The movie #{capitalizedTitle} has rank #{@initialRank} (#{@movie.status})"
	end
	
	it "increases the rank by one one we execute thumbs up" do
		expectected = @initialRank + 1
		@movie.thumbsUp
		@movie.rank.should == expectected
	end
	
	it "decreases the rank by one one we execute thumbs down" do
		expectecRank = @initialRank - 1
		@movie.thumbsDown
		@movie.rank.should == expectecRank
	end
	
	
	context "created with default rank" do
		before do
			@movie = Movie.new("not nil")
		end
		
		it "has an default rank of 10" do
			@movie.rank.should == 10
		end
	end

	
	context "movie with a rank of at least 10 of rank" do
		before do
			@movie = Movie.new("not nil", 15)
		end
		
		it "is a hit" do
			@movie.hit?.should be_true
		end
		
		it "has a status of hit" do
			@movie.status.should == 'Hit'
		end
	end
	
	context "movie with a rank less than 10" do
		before do
			@movie = Movie.new("not nil", 8)
		end
		
		it "is not a hit" do
			@movie.should_not be_hit
		end
		
		it "has a status of flop" do
			@movie.status.should == 'Flop'
		end
	end

end