require 'faker'

Cow.create(name: "Dr Bongo", heading: "Welcome to this odd app...", description: Faker::Lorem.paragraph(2), image_url: "http://craigkuriger.com/Cow1.png", money: 300.00)
Cow.create(name: "Wendell", heading: "You can't be half a Gangster...", description: Faker::Lorem.paragraph(2), image_url: "http://craigkuriger.com/Cow4.png", money: 999.99)
Cow.create(name: "Code Cow", heading: "Because cows need code too", description: Faker::Lorem.paragraph(2), image_url: "http://craigkuriger.com/Cow2.png", money: 234.99)
Cow.create(name: "Qwerty", heading: "Welcome to Springfield", description: Faker::Lorem.paragraph(2), image_url: "http://craigkuriger.com/Cow3.png", money: 500.00)
Cow.create(name: "eRNIE", heading: "Insert another random line", description: Faker::Lorem.paragraph(2), image_url: "http://craigkuriger.com/Cow5.png", money: 157.00)
Cow.create(name: "Cookie Monster", heading: "Homer Simpson is awesome", description: Faker::Lorem.paragraph(2), image_url: "http://craigkuriger.com/Cow6.png", money: 45.50)

cow1 = Cow.find_by(name: "Dr Bongo")
cow2 = Cow.find_by(name: "Wendell")
cow3 = Cow.find_by(name: "Code Cow")
cow4 = Cow.find_by(name: "Qwerty")
cow5 = Cow.find_by(name: "eRNIE")
cow6 = Cow.find_by(name: "Cookie Monster")

cow1.calves.create(name: Faker::Lorem.word)
cow1.calves.create(name: Faker::Lorem.word)
cow1.calves.create(name: Faker::Lorem.word)
cow1.calves.create(name: Faker::Lorem.word)
cow2.calves.create(name: Faker::Lorem.word)
cow2.calves.create(name: Faker::Lorem.word)
cow3.calves.create(name: Faker::Lorem.word)
cow4.calves.create(name: Faker::Lorem.word)
cow4.calves.create(name: Faker::Lorem.word)
cow4.calves.create(name: Faker::Lorem.word)
cow4.calves.create(name: Faker::Lorem.word)
cow4.calves.create(name: Faker::Lorem.word)
cow5.calves.create(name: Faker::Lorem.word)
cow6.calves.create(name: Faker::Lorem.word)
cow6.calves.create(name: Faker::Lorem.word)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
