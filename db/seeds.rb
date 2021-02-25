# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all
User.destroy_all
City.destroy_all

juliana = User.create!(first_name: "Juliana", last_name: "Mokwa", email: "juliana@example.com", password: "123456")
london = City.create!(name: "London")
lisbon = City.create!(name: "Lisbon")
rome = City.create!(name: "Rome")
paris = City.create!(name: "Paris")
Flat.create!(name: "Tilden house", address: "London WS15PG", description: "Lovely house in west london", price: 100, user: juliana, city: london)

ronaldo = User.create!(first_name: "Ronaldo", last_name: "Goncalves", email: "ronaldo@example.com", password: "123456")
Flat.create!(name: "Italian houses", address: "Italy WS15PG", description: "Lovely house in Italy", price: 80, user: ronaldo, city: rome)

tina = User.create!(first_name: "Tina", last_name: "Luso", email: "tina@example.com", password: "123456")

Flat.create!(name: "house", address: "London WS15PG", description: "Lovely house in west london", price: 150, user: tina, city: london)

Flat.create!(name: "House", address: "London WS15PG", description: "Lovely house in west london", price: 150, user: tina, city: london)

Flat.create!(name: "Apartment", address: "Berlin WR15PG", description: "Lovely apartment in west berlin", price: 150, user: tina, city: london)

Flat.create!(name: "Apartment", address: "Rue de Foo", description: "Lovely apartment in west Paris", price: 150, user: tina, city: paris)
