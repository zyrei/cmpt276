# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

for x in 0..9
	User.create!(email: "j#{x}hn@example.com", password: "pass", password_confirmation: "pass", nickname: "J#{x}hn Marsh#{x}ll", age: "2#{x}", city: "Vancouver", descriptions: "my name is j#{x}hn and i'm a skateboarder." )
end