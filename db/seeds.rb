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
puts 'Pioche crée!!'

puts 'Creer la pioche de gemmes'
User.create!(username: "Pioche de Gemme",
  email: "lapiochegemme@gmail.com",
  password: "123456")
puts 'Pioche de gemmes créée'

puts 'Creating a lot of Gemme de Feu'
2.times do
  Card.create!(
    name: 'Gemme de Feu',
    collection: 'Objet',
    color: "Aucune",
    price: 2,
    cash: 2,
    throw: true,
    damage_if_throw: 3,
    photo: 'Gemme_de_feu.jpg',
    user: User.find_by(email: "lapiochegemme@gmail.com")
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
    photo: 'Taxation.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
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
    photo: 'Recrutement.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
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
    photo: 'Serrer_les_rangs.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
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
    photo: 'Ralliement_des_troupes.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
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
    photo: 'Commandement.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
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
    photo: 'Domination.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
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
    photo: 'Parole_de_puissance.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )

  puts "all Yellow Action cards create!!"

puts 'Creating Green Action cards'
3.times do
  Card.create!(
    name: 'Etincelle',
    collection: 'Action',
    color: "Verte",
    price: 1,
    damage: 3,
    discard_enemy: 1,
    combine: true,
    damage_if_combine: 2,
    photo: 'Etincelle.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
3.times do
  Card.create!(
    name: 'Don Elfique',
    collection: 'Action',
    color: "Verte",
    price: 2,
    cash: 2,
    draw: 1,
    discard: 1,
    combine: true,
    damage_if_combine: 4,
    photo: 'Don_elfique.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
2.times do
  Card.create!(
    name: 'Malediction Elfique',
    collection: 'Action',
    color: "Verte",
    price: 3,
    damage: 6,
    discard_enemy: 1,
    combine: true,
    damage_if_combine: 3,
    photo: 'Malediction_elfique.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
Card.create!(
    name: 'Don de la Nature',
    collection: 'Action',
    color: "Verte",
    price: 4,
    cash: 4,
    combine: true,
    discard_enemy_if_combine: 1,
    throw: true,
    damage_if_throw: 4,
    photo: 'Don_de_la_nature.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: 'Forme de Loup',
    collection: 'Action',
    color: "Verte",
    price: 5,
    damage: 8,
    discard_enemy: 1,
    throw: true,
    discard_enemy_if_throw: 1,
    photo: 'Forme_de_loup.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: 'Sauvagerie',
    collection: 'Action',
    color: "Verte",
    price: 6,
    damage: 6,
    draw: 2,
    discard: 2,
    photo: 'Sauvagerie.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
puts 'Toutes les action vertes créées!'
puts 'Créer toutes les actions rouge'
3.times do
  Card.create!(
    name: 'Contact Mortel',
    collection: 'Action',
    color: "Rouge",
    price: 1,
    damage: 2,
    sacrify: 1,
    combine: true,
    damage_if_combine: 2,
    photo: 'Etincelle.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
3.times do
  Card.create!(
    name: 'Influence',
    collection: 'Action',
    color: "Rouge",
    price: 2,
    cash: 3,
    throw: true,
    damage_if_throw: 3,
    photo: 'Etincelle.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
2.times do
  Card.create!(
      name: 'La putréfaction',
      collection: 'Action',
      color: "Rouge",
      price: 3,
      damage: 4,
      sacrify: 1,
      combine: true,
      damage_if_combine: 3,
      photo: 'Etincelle.jpg',
      user: User.find_by(email: "lapioche@gmail.com")
    )
end
Card.create!(
      name: 'Energie sombre',
      collection: 'Action',
      color: "Rouge",
      price: 4,
      damage: 7,
      draw_if_combine: 1,
      photo: 'Etincelle.jpg',
      user: User.find_by(email: "lapioche@gmail.com")
    )
Card.create!(
      name: 'Sombre récompense',
      collection: 'Action',
      color: "Rouge",
      price: 5,
      cash: 3,
      sacrify: 1,
      combine: true,
      damage_if_combine: 6,
      photo: 'Etincelle.jpg',
      user: User.find_by(email: "lapioche@gmail.com")
    )
Card.create!(
      name: 'Drain de vie',
      collection: 'Action',
      color: "Rouge",
      price: 6,
      damage: 8,
      sacrify: 1,
      combine: true,
      draw_if_combine: 1,
      photo: 'Etincelle.jpg',
      user: User.find_by(email: "lapioche@gmail.com")
    )
puts 'Action rouges créées!'
