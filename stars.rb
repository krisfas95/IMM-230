puts "enter a number:"
row_count = gets.chomp.to_i

count = 0
row_count.times do
	count += 1
	stars = "*" * count
	puts stars
end 


