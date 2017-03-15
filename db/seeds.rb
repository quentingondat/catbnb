# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

# User.create!(name: 'Nico', description: "J'adore les chats lol", email:"clement.fernon@gmail.com", password: '123456')
# User.create!(name: 'Florence', description: "J'adore les chats lol", email:"clement.fernon+1@gmail.com", password: '123456')
# User.create!(name: 'Chantale', description: "J'adore les chats lol", email:"clement.fernon+2@gmail.com", password: '123456')
# User.create!(name: 'Alix', description: "J'adore les chats lol", email:"clement.fernon+3@gmail.com", password: '123456')
# User.create!(name: 'Lolo', description: "J'adore les chats lol", email:"clement.fernon+4@gmail.com", password: '123456')
# User.create!(name: 'Clément', description: "J'adore les chats lol", email:"clement.fernon+5@gmail.com", password: '123456')

# #:name, :race, :age, :address, :price_per_day, :description, :cage, :litter, :cat_tree, :toys, :bowl, :outdoor, :belly_rubs
# Cat.create!(name: 'Filou', race: 'Goutière', age: 8, address: "66 avenue de Saxe, 75015 Paris", price_per_day: 30, description: "Très calin qui fait des bisous bisous lol", user: User.all.sample)
# Cat.create!(name: 'Ficelle', race: 'Batard', age: 0.5, address: "5 rue de la Poste, 33670 La Sauve Majeure", price_per_day: 35, description: "Un amour de chat!", user: User.all.sample)
# Cat.create!(name: 'Canelle', race: 'Batard', age:4, address: "13 rue de Nicosie 92160 Antony", price_per_day: 40, description: "Discrète et délicate, calme, apaisante.", user: User.all.sample)
# Cat.create!(name: 'Tigrou', race: 'Sacré de Birmanie', age: 3, address: "42 rue Pascal 75013 Paris", price_per_day: 30, description: "Chat fou qui court partout et très affectueux :)", user: User.all.sample)
# Cat.create!(name: 'Minette', race: 'Siamois', age: 11, address: "20 rue des Petits Carreaux 75003 Paris", price_per_day: 25, description: "Miaule la nuit mais sinon très gentil.", user: User.all.sample)
# Cat.create!(name: 'Barnouf', race: 'Bleu de Russie', age: 1.5, address: "135 rue de Clignancourt, 75018 Paris", price_per_day: 45, description: "Le summum du chat - un régal !", user: User.all.sample)
