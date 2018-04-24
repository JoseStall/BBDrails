#gem faker qui permet de générer différentes données
require 'faker'

10.times do
	#Cette requete va créer 10 cours dans la table Courses
	course = Course.create(
		title: Faker::ProgrammingLanguage.name, description: Faker::ProgrammingLanguage.creator
	)
	#Cette requete va créer 10 Leçons pour chaque cours dans la table Lessons donc 10*10 = 100 leçons 
	10.times do
		course.lesson.create(
			title: Faker::ProgrammingLanguage.name, body: Faker::Hipster.paragraph
		)
	end
end