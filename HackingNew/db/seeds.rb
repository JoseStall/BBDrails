#gem faker qui permet de générer différentes données
require 'faker'

10.times do
	#Cette requete va créer 10 utilisateurs dans la table Users
	user = User.create(
		name: Faker::Zelda.character
	)
	#Cette requete va créer 10 liens dans la table Links
	user.links.create(
		url: Faker::Hipster.paragraph
	)
	#Cette requete va créer 10 commentaires dans la table Comments
	user.comments.create(
		comment: Faker::Hipster.paragraph, link_id: Link.pluck(:id).sample, user_id: User.pluck(:id).sample
	)
end