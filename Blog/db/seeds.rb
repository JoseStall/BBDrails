# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
	users = User.create(name: Faker::GameOfThrones.character, mail: Faker::Internet.email)
	art = users.article.create(name: Faker::Hipster.words, body: Faker::Hipster.paragraph, description: Faker::StarWars.quote )
	10.times do art.category.create(name:Faker::Hipster.sentence)
	end
end