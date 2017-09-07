# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create!(name: "lawnmower", description: "Fantastic green grass-cutting machine.", price_in_cents: 100000 )
Product.create!(name: "Leaf Blower", description: "Fantastic lean-blowing machine.", price_in_cents: 200000)
Product.create!(name: "Ipod", description: "Listen to your tunes", price_in_cents: 400000)
Product.create!(name: "laptop", description: "slow, old, dated, and dusty.", price_in_cents: 10000)
Product.create!(name: "Fan", description: "Hot to trot, cool yourself down with this fan", price_in_cents: 500000 )
