print "What's your first name?"
first_name=gets.chomp
first_name.capitalize!
puts "#{first_name}"
first_name.length
puts "first name length is #{first_name.length}"

print "What's your last name?"
last_name=gets.chomp
last_name.capitalize!
puts "#{last_name}"
last_name.length
puts "last name length is #{last_name.length}"


total_length=first_name.length + last_name.length

puts "total length of name is #{total_length}"

puts "Please input your new first name"
first_name_new = gets
first_name_new.capitalize!
puts "New first name is #{first_name_new}"

puts "Please input your new last name"
last_name_new = gets
last_name_new.capitalize!
puts "New last name is #{last_name_new}"


print "enter a word:"
string = gets.chomp
if string.reverse == string
	puts "This is a palindrome"
else
	puts "This is not a palindrome.\n"
end 