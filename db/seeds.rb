# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all
User.destroy_all
juliana = User.create!(first_name: "Juliana", last_name: "Mokwa", email: "juliana@example.com", password: "123456")
Flat.create!(name: "Tilden house", address: "London WS15PG", description: "Lovely house in west london", price: 100, user: juliana)

ronaldo = User.create!(first_name: "Ronaldo", last_name: "Goncalves", email: "ronaldo@example.com", password: "123456")
Flat.create!(name: "Italian houses", address: "Italy WS15PG", description: "Lovely house in Italy", price: 80, user: ronaldo)

tina = User.create!(first_name: "Tina", last_name: "Luso", email: "tina@example.com", password: "123456")
Flat.create!(name: "House", address: "London WS15PG", description: "Lovely house in west london", price: 150, user: tina)

Flat.create!(name: "Apartment", address: "Berlin WR15PG", description: "Lovely apartment in west berlin", price: 150, user: tina)



