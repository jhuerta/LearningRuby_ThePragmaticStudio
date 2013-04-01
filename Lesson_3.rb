movie = "Goonies"
p movie
date = Time.new
p "The time is is #{date} and its class is #{date.class}"
one = "Number One"
onecopy = one
p "One var is #{one} and onecopy var is #{onecopy} with ids of #{one.object_id} and #{onecopy.object_id}"
one[0] = "P"
p "I modify one. Then One var is #{one} and onecopy var is #{onecopy} with ids of #{one.object_id} and #{onecopy.object_id}"
onecopy = "other value"
p "I modify onecopy. Then One var is #{one} and onecopy var is #{onecopy} with ids of #{one.object_id} and #{onecopy.object_id}"

two = 2
twocopy = 2
p "One: #{two} and twocopy var is #{twocopy} with ids of #{two.object_id} and #{twocopy.object_id}"
two=3
p "I increment two. One: #{two} and twocopy var is #{twocopy} with ids of #{two.object_id} and #{twocopy.object_id}"
two = 4
p "I change the value of two. One: #{two} and twocopy var is #{twocopy} with ids of #{two.object_id} and #{twocopy.object_id}"

title = "\nPlaying with justifications and filling chars\n\n"
title = "H"
puts title.rjust(10,".").ljust(21,".").center(30)
puts title.center(30, '.')
name = "Juan"
name2 = "Mari Juan"
puts "Centered between chars:*" + name.center(50) + "*"
puts name.ljust(50,".")
puts name2.ljust(50,".")

puts name.rjust(50,".")
puts name2.rjust(50,".")

movie = "goonies"
movie.capitalize!
score = 15
movie = movie.ljust(score,'*')


puts "#{movie} #{score}"