# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
	user = User.create(
		name: Faker::Zelda.character
	)
	user.links.create(
		url: Faker::Hipster.paragraph
	)
	user.comments.create(
		comment: Faker::Hipster.paragraph, link_id: Link.pluck(:id).sample, user_id: User.pluck(:id).sample
	)
end