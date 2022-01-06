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
    photo: 'Contact_mortel.jpg',
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
    photo: 'Influence.jpg',
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
      photo: 'La_putrefaction.jpg',
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
      photo: 'Energie_sombre.jpg',
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
      photo: 'Sombre_recompense.jpg',
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
      photo: 'Drain_de_vie.jpg',
      user: User.find_by(email: "lapioche@gmail.com")
    )
puts 'Action rouges créées!'
puts 'Créer les actions bleues'
3.times do
  Card.create!(
    name: 'Benefice',
    collection: 'Action',
    color: "Bleue",
    price: 1,
    cash: 2,
    combine: true,
    damage_if_combine: 4,
    photo: 'Benefice.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
2.times do
  Card.create!(
    name: 'Intimidation',
    collection: 'Action',
    color: "Bleue",
    price: 2,
    damage: 5,
    combine: true,
    cash_if_combine: 2,
    photo: 'Intimidation.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
3.times do
  Card.create!(
    name: 'Pot-de-vin',
    collection: 'Action',
    color: "Bleue",
    price: 3,
    cash: 3,
    combine: true,
    next_action_purchased_on_top_if_combine: true,
    photo: 'Pot_de_vin.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
Card.create!(
    name: 'Menace de mort',
    collection: 'Action',
    color: "Bleue",
    price: 3,
    damage: 1,
    draw: 1,
    combine: true,
    knock_out_champ_if_combine: true,
    photo: 'Menace_de_mort.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: 'Mise à prix',
    collection: 'Action',
    color: "Bleue",
    price: 4,
    damage: 7,
    combine: true,
    knock_out_champ_if_combine: true,
    photo: 'Mise_a_prix.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: 'Fourberie',
    collection: 'Action',
    color: "Bleue",
    price: 5,
    cash: 2,
    draw: 1,
    combine: true,
    next_card_purchased_in_hand_if_combine: true,
    photo: 'Fourberie.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: 'Casser et piller',
    collection: 'Action',
    color: "Bleue",
    price: 6,
    damage: 6,
    card_discarding_on_top: true,
    photo: 'Casser_et_piller.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: 'Bombe incendiaire',
    collection: 'Action',
    color: "Bleue",
    price: 8,
    damage: 8,
    draw: 1,
    knock_ou_champ: true,
    throw: true,
    damage_if_throw: 5,
    photo: 'Bombe_incendiaire.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
puts 'Actions bleues créées!!!'
puts 'Création des champions jaunes'
2.times do
  Card.create!(
    name: 'Percepteur de Dime',
    collection: 'Champion',
    color: "Jaune",
    price: 2,
    champion: true,
    life_of_champ: 3,
    choice: true,
    cash_if_choice: 1,
    heal_for_all_champs_if_choice: 1,
    photo: 'Percepteur_de_dime.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
2.times do
  Card.create!(
    name: "Homme d'armes",
    collection: 'Champion',
    color: "Jaune",
    price: 3,
    champion: true,
    gard: true,
    life_of_gard: 4,
    damage: 2,
    damage_for_other_gard: 1,
    photo: 'homme_d_armes.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
Card.create!(
    name: "Maitre Weyan",
    collection: 'Champion',
    color: "Jaune",
    price: 4,
    champion: true,
    gard: true,
    life_of_gard: 4,
    damage: 3,
    damage_for_other_champ: 1,
    photo: 'Maitre_weyan.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: "Darian, Mage de guerre",
    collection: 'Champion',
    color: "Jaune",
    price: 4,
    champion: true,
    life_of_champ: 5,
    choice: true,
    heal_if_choice: 4,
    damage_if_choice: 3,
    photo: 'Darian_mage_de_guerre.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: "Cristov, le juste",
    collection: 'Champion',
    color: "Jaune",
    price: 5,
    champion: true,
    gard: true,
    life_of_gard: 5,
    damage: 2,
    heal: 3,
    combine: true,
    draw_if_combine: 1,
    photo: 'Cristov_le_juste.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: "Kraka, grand pretre",
    collection: 'Champion',
    color: "Jaune",
    price: 6,
    champion: true,
    life_of_champ: 6,
    draw: 1,
    heal: 2,
    combine: true,
    heal_for_all_champs_if_combine: 2,
    photo: 'Kraka_grand_pretre.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: "Arkus, dragon imperial",
    collection: 'Champion',
    color: "Jaune",
    price: 8,
    champion: true,
    gard: true,
    life_of_gard: 6,
    damage: 5,
    draw: 1,
    combine: true,
    heal_if_combine: 6,
    photo: 'Arkus_dragon_imperial.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
puts "Tous les champions jeune créé!!!"
puts "Création des champions rouge"
2.times do
  Card.create!(
    name: 'Cultiste de la mort',
    collection: 'Champion',
    color: "Rouge",
    price: 2,
    champion: true,
    gard: true,
    life_of_gard: 3,
    damage: 2,
    photo: 'Cultiste_de_la_mort.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
2.times do
  Card.create!(
    name: 'Pretre du culte',
    collection: 'Champion',
    color: "Rouge",
    price: 3,
    champion: true,
    life_of_champ: 4,
    choice: true,
    cash_if_choice: 1,
    damage_if_choice: 1,
    combine: true,
    damage_if_combine: 4,
    photo: 'Pretre_du_culte.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
end
Card.create!(
    name: 'Rayla, Tisseuse de fins',
    collection: 'Champion',
    color: "Rouge",
    price: 4,
    champion: true,
    life_of_champ: 4,
    damage: 3,
    combine: true,
    draw_if_combine: 1,
    photo: 'Rayla_tisseuse_de_fins.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: 'Varick, le nécromancien',
    collection: 'Champion',
    color: "Rouge",
    price: 5,
    champion: true,
    life_of_champ: 3,
    champ_from_discarding_on_top: true,
    combine: true,
    draw_if_combine: 1,
    photo: 'Varrick_le_necromancien.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: "Lys, l'inapparent",
    collection: 'Champion',
    color: "Rouge",
    price: 6,
    champion: true,
    gard: true,
    life_of_gard: 5,
    damage: 2,
    sacrify: 1,
    damage_if_sacrify: 2,
    photo: 'Lys_l_inapparent.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: "Krythos, maitre vampire",
    collection: 'Champion',
    color: "Rouge",
    price: 7,
    champion: true,
    life_of_champ: 6,
    damage: 3,
    sacrify: 1,
    damage_if_sacrify: 3,
    photo: 'Krythos_maitre_vampire.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
Card.create!(
    name: "Tyrannor, le dévoreur",
    collection: 'Champion',
    color: "Rouge",
    price: 6,
    champion: true,
    gard: true,
    life_of_gard: 6,
    damage: 4,
    sacrify: 2,
    combine: true,
    draw_if_combine: 1,
    photo: 'Tyrannor_le_devoreur.jpg',
    user: User.find_by(email: "lapioche@gmail.com")
  )
