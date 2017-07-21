# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

DeviseUser.create!(email: 'default@test.com', password: 'password', password_confirmation: 'password', nickname: "Kevin Smith", gender:'male', age: '25', city: 'Burnaby', description: 'im an average human' )
for x in 0..9
	DeviseUser.create!(email: "j#{x}hn@example.com", password: "123456", password_confirmation: "123456", nickname: "J#{x}hn Marsh#{x}ll", gender: 'male', age: "2#{x}", city: "Vancouver", description: "my name is j#{x}hn and i'm a skateboarder." )
end