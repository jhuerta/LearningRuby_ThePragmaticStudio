puts 'I love Goonies!'
movie = "The Godfather"
score = 3
points = 3.5
puts 'I can print an appostroph\''

puts "I love this movie: #{movie}"

puts 'I love this movie: ' + movie + " with score: " + score.to_s + " and points: " + points.to_s
puts "I love this movie: #{movie} with score: #{score} and points: #{points}"
puts "I love this movie: #{movie} with score: #{score * 50 } and points: #{points-100}"

puts 'Using \nscape \tcharacters only works \rwith double quotes'
puts "Using \nscape \tcharacters only works with double quotes"
