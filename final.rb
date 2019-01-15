require 'sinatra'
require 'sqlite3'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
    return 'Hello world'
end

print "What's your first name?"
first_name=gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name=gets.chomp
last_name.capitalize!

print "What's your birthday?"
birthday_number=gets.chomp

print "What's your phone number?"
phone_number=gets.chomp

print "What's your address"
address_name=gets.chomp

print "What's your position"
position_name=gets.chomp
position_name.capitalize!

print "What's your emergency contact first name?"
emergency_name=gets.chomp
emergency_name.capitalize!

print "What's your emergency contact last name?"
emergencylast_name=gets.chomp
emergencylast_name.capitalize!


post '/hello/' do
	greeting = params [:greeting] || "Hi there"
	employee_name = params [:name]

	# create database 
	db = SQLite3::Database.open "final.db"

	# insert greeting and name 
	db.execute "insert into employees (name, greeting) values (‘#{employee_name}’, '#{greeting}')"


	db.close

end