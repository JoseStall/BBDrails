#gem faker qui permet de générer différentes données
require 'faker'

10.times do
	#Cette requete va créer 10 utilisateurs dans la table Users
	user = User.create(
		name: Faker::ProgrammingLanguage.name
	)
	#Cette requete va créer 10 pins dans la table Pins
	user.pins.create(
		url: Faker::Hipster.paragraph
	)
	#Cette requete va créer 10 commentaire dans la table Comments
	user.comments.create(
		comment: Faker::Hipster.paragraph, pin_id: Pin.pluck(:id).sample
	)
end