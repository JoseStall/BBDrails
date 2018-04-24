#gem faker qui permet de générer différentes données
require 'faker'

10.times do
	#Cette requete va créer 10 utilisateurs dans la table User
	users = User.create(name: Faker::GameOfThrones.character, mail: Faker::Internet.email)
	#Cette requete va créer 10 articles dans la table Article
	art = users.article.create(name: Faker::Hipster.words, body: Faker::Hipster.paragraph, description: Faker::StarWars.quote )
	#Cette requete va créer 10 categories dans la table Category pour chaque article donc 10*10 = 100 categories
	10.times do art.category.create(name:Faker::Hipster.sentence)
	end
end