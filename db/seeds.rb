# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "users destroyed"
Trait.destroy_all

user = User.create!(first_name: "John", last_name: "Smith", email: "john@dot.com", password: "123456")
user1 = User.create!(first_name: "Ana", last_name: "Smith", email: "ana@dot.com", password: "123456")
user2 = User.create!(first_name: "Marjori", last_name: "Smith", email: "marjorie@dot.com", password: "123456")
user3 = User.create!(first_name: "Claudine", last_name: "Smith", email: "claudine@dot.com", password: "123456")
user4 = User.create!(first_name: "Alicia", last_name: "Smith", email: "alicia@dot.com", password: "123456")
puts "users created"


trait = Trait.create!(name: "Competence", description: "The quality or state of having sufficient knowledge, judgment, skill, or strength (as for a particular duty or in a particular respect)", price_hour: 10, user: user)
trait1 = Trait.create!(name: "Warmth", description: "A warm person is friendly towards other people, respecting them and caring for them. With such warmth they create a reciprocal liking, trust and bonding. In contrast a cold person has a lot more difficulty in gaining sympathy from others, and perhaps does not care about this.", price_hour: 15, user: user1)
trait2 = Trait.create!(name: "Outgoing", description: "The adjective outgoing describes someone with a friendly, easy personality. Your outgoing friend might not understand how hard it is for shy people to speak in front of an audience. If you're the only member of your outgoing family who is reserved, you might feel silent and invisible in their sociable midst.", price_hour: 20, user: user2)
trait3 = Trait.create!(name: "Honest", description: "Honesty is a facet of moral character that connotes positive and virtuous attributes such as integrity, truthfulness, straightforwardness, including straightforwardness of conduct, along with the absence of lying, cheating, theft, etc.", price_hour: 25, user: user3)
trait4 = Trait.create!(name: "Trustworthy", description: "A trustworthy person is someone in whom we can place our trust and rest assured that the trust will not be betrayed. Because trust is based on truth, trustworthy people must be truthful.", price_hour: 30, user: user4)

puts "traits created"

puts "creating reservation"

# reservation = Reservation.create!(user: user, trait: trait)
