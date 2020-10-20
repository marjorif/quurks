# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "users destroyed"

user = User.create(first_name: "john", last_name: "smith", email: "john@dot.com", password: "123456")
user1 = User.create(first_name: "ana", last_name: "smith", email: "ana@dot.com", password: "123456")
user2 = User.create(first_name: "marjorie", last_name: "smith", email: "marjorie@dot.com", password: "123456")
user3 = User.create(first_name: "claudine", last_name: "smith", email: "claudine@dot.com", password: "123456")
user4 = User.create(first_name: "alicia", last_name: "smith", email: "alicia@dot.com", password: "123456")
puts "users created"


trait = Trait.create(name: "competence", description: "lorem ipsum", price_hour: 10)
trait1 = Trait.create(name: "warmth", description: "lorem ipsum", price_hour: 15)
trait2 = Trait.create(name: "outgoing", description: "lorem ipsum", price_hour: 20)
trait3 = Trait.create(name: "honest", description: "lorem ipsum", price_hour: 25)
trait4 = Trait.create(name: "trustworthy", description: "lorem ipsum", price_hour: 30)

puts "traits created"
