def weekday(day=Time.new)
	day.strftime("%A")
end

def movies(title,rank, score, val=10, length=title.length)
	" #{weekday} Movie (#{length}) #{title} has a score of #{score} and rank of #{val}".upcase.ljust(score,'*')
end



puts movies("goonies", 2, 100)
puts movies("ghostbuster", 5, 80, 555,111)
puts movies("godfather", 8, 70)