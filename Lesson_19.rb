input = ARGV.shift

puts "The input value is #{input}"

loop do
	puts "Input a number"
	answer = gets.chomp
	break if answer.to_i == -1
	puts "This is the input **#{answer.to_i + 10}**"
end

puts "\nMethod 1"
File.open("array.txt") do |file|
	file.each_line do |line|
		puts line
	end
end

puts "\nMethod 2"
File.readlines("array.txt").each do |line|
	fields = line.split(",")
	field_1, field_2 = line.split(",")
	puts "1st: #{field_1} - 2nd: #{field_2}"

	File.open("saved_file.txt", "a") do |file|
		file.puts line.reverse
	end
end