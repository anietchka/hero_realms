# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.destroy_all
User.destroy_all
puts 'Creer la pioche'
User.create!(username: "Pioche",
  email: "lapioche@gmail.com",
  password: "123456")
puts 'pioche crée!!'
puts 'Creating a lot of Gemme de Feu'
2.times do
  Card.create!(
    name: 'Gemme de Feu',
    collection: 'Objet',
    color: "Aucune",
    price: 2,
    cash: 2,
    throw: true,
    damage_if_throw: 3
  )
end
puts 'Gemme de feu créés'

puts 'Creating Yellow Action cards'
3.times do
  Card.create!(
    name: 'Taxation',
    collection: 'Action',
    color: "Jaune",
    price: 1,
    cash: 2,
    combine: true,
    heal_if_combine: 6,
    user: User.find_by(email: 'lapioche@gmail.com')
  )
end
3.times do
  Card.create!(
    name: 'Recrutement',
    collection: 'Action',
    color: "Jaune",
    price: 2,
    cash: 2,
    heal: 3,
    heal_for_all_champs: 1,
    combine: true,
    cash_if_combine: 1,
    user: User.find_by(email: 'lapioche@gmail.com')
  )
end
Card.create!(
    name: 'Serrer les Rangs',
    collection: 'Action',
    color: "Jaune",
    price: 3,
    damage: 5,
    damage_for_all_champs: 2,
    combine: true,
    heal_if_combine: 6,
    user: User.find_by(email: 'lapioche@gmail.com')
  )
Card.create!(
    name: 'Ralliement des troupes',
    collection: 'Action',
    color: "Jaune",
    price: 4,
    damage: 5,
    heal: 5,
    combine: true,
    mobilize_champ_if_combine: true,
    user: User.find_by(email: 'lapioche@gmail.com')
  )
Card.create!(
    name: 'Commandement',
    collection: 'Action',
    color: "Jaune",
    price: 5,
    cash: 2,
    damage: 3,
    heal: 4,
    draw: 1,
    user: User.find_by(email: 'lapioche@gmail.com')
  )
Card.create!(
    name: 'Domination',
    collection: 'Action',
    color: "Jaune",
    price: 7,
    damage: 6,
    heal: 6,
    draw: 1,
    combine: true,
    mobilize_champ_if_combine: true,
    user: User.find_by(email: 'lapioche@gmail.com')
  )
Card.create!(
    name: 'Parole de Puissance',
    collection: 'Action',
    color: "Jaune",
    price: 6,
    draw: 2,
    combine: true,
    heal_if_combine: 5,
    throw: true,
    damage_if_throw: 5,
    user: User.find_by(email: 'lapioche@gmail.com')
  )

  puts "all Yellow Action cards create!!"
