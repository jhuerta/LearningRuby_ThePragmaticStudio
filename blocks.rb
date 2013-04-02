3.times { puts "Echo" }

3.times do 
	puts "Echo" 
end

3.times do  |i|
	puts "#{i} - Done" 
end

6.upto(10) do |p|
	puts "#{p} - Echo" 
end