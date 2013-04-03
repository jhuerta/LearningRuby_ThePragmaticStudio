snacks = { bar: 14, max: 20, peanuts:50}
sodas = { :coke => 20, :orange => 40, :beer => 100 }
default_value = 666
healthies = Hash.new(default_value)
healthies[:lettuce] = 1
healthies[:water] = 0
healthies[:apple] = 5


snacks.each do |key,value|
	puts "Snak #{key} has #{value} calories"
end

sodas.each do |key,value|
	puts "Soda #{key} has #{value} calories"
end

healthies.each do |key,value|
	puts "Healthy #{key} has #{value} calories"
end

non_existent = :non_existent

puts "Healthy #{non_existent.to_s} has #{healthies[non_existent]} calories"