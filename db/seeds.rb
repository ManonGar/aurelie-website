# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Drawing.destroy_all
puts 'Destroying Drawings'

Theme.destroy_all
puts 'Destroying Themes'

#-----------------------------themes------------------------------------#
puts 'Creating themes'

theme1 = Theme.create(name: "Notebooks")
file1 = File.open('app/assets/images/metropolis_blueprint.jpg')
theme1.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')

theme2 = Theme.create(name: "Illustrations")
file2 = File.open('app/assets/images/ivresse_du_pouvoir.jpg')
theme2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

puts "#{Theme.all.length} themes created"

#-------------------------------Notebooks----------------------------------#
puts 'Creating Drawings'

cascade_cities = Drawing.create(title: "Cascade Cities", date: 2019, theme_id: theme1.id)
notebook1 = File.open('app/assets/images/cascade_cities.jpg')
cascade_cities.photo.attach(io: notebook1, filename: 'notebook.png', content_type: 'image/png')

cinq_sur_cinq = Drawing.create(title: "Cinq sur Cinq", date: 2021, theme_id: theme1.id)
notebook2 = File.open('app/assets/images/cinq_sur_cinq.jpg')
cinq_sur_cinq.photo.attach(io: notebook2, filename: 'notebook.png', content_type: 'image/png')

circle_of_life = Drawing.create(title: "Circle of life", date: 2021, theme_id: theme1.id)
notebook3 = File.open('app/assets/images/circle_of_life.jpg')
circle_of_life.photo.attach(io: notebook3, filename: 'notebook.png', content_type: 'image/png')

crumbling_palaces = Drawing.create(title: "Crumbling palaces", date: 2020, theme_id: theme1.id)
notebook4 = File.open('app/assets/images/crumbling_palaces.jpg')
crumbling_palaces.photo.attach(io: notebook4, filename: 'notebook.png', content_type: 'image/png')

le_cinquieme_element = Drawing.create(title: "Le cinquième élément", date: 2021, theme_id: theme1.id)
notebook5 = File.open('app/assets/images/le_cinquieme_element.jpg')
le_cinquieme_element.photo.attach(io: notebook5, filename: 'notebook.png', content_type: 'image/png')

le_vieil_amour = Drawing.create(title: "Le vieil amour", date: 2016, theme_id: theme1.id)
notebook6 = File.open('app/assets/images/le_vieil_amour.jpg')
le_vieil_amour.photo.attach(io: notebook6, filename: 'notebook.png', content_type: 'image/png')

maps_rivers = Drawing.create(title: "Maps & Rivers", date: 2020, theme_id: theme1.id)
notebook7 = File.open('app/assets/images/maps_&_rivers.jpg')
maps_rivers.photo.attach(io: notebook7, filename: 'notebook.png', content_type: 'image/png')

medusa_perseus = Drawing.create(title: "Medusa vs. Perseus", date: 2021, theme_id: theme1.id)
notebook8 = File.open('app/assets/images/medusa_vs_perseus.jpg')
medusa_perseus.photo.attach(io: notebook8, filename: 'notebook.png', content_type: 'image/png')

metropolis_blueprint = Drawing.create(title: "Metropolis blueprint", date: 2020, theme_id: theme1.id)
notebook9 = File.open('app/assets/images/metropolis_blueprint.jpg')
metropolis_blueprint.photo.attach(io: notebook9, filename: 'notebook.png', content_type: 'image/png')

montagne_de_confinements = Drawing.create(title: "Montagne de confinements", date: 2020, theme_id: theme1.id)
notebook10 = File.open('app/assets/images/montagne_de_confinements.jpg')
montagne_de_confinements.photo.attach(io: notebook10, filename: 'notebook.png', content_type: 'image/png')

vegetabilis = Drawing.create(title: "Vegetabilis", date: 2019, theme_id: theme1.id)
notebook11 = File.open('app/assets/images/vegetabilis.jpg')
vegetabilis.photo.attach(io: notebook11, filename: 'notebook.png', content_type: 'image/png')

the_other_places = Drawing.create(title: "The other places", date: 2021, theme_id: theme1.id)
notebook12 = File.open('app/assets/images/the_other_places.jpg')
the_other_places.photo.attach(io: notebook12, filename: 'notebook.png', content_type: 'image/png')

les_cartes_perdues = Drawing.create(title: "Les cartes perdues", date: 2020, theme_id: theme1.id)
notebook13 = File.open('app/assets/images/les_cartes_perdues.jpg')
les_cartes_perdues.photo.attach(io: notebook13, filename: 'notebook.png', content_type: 'image/png')

overgrown_warships = Drawing.create(title: "Overgrown warships", date: 2019, theme_id: theme1.id)
notebook14 = File.open('app/assets/images/overgrown_warships.jpg')
overgrown_warships.photo.attach(io: notebook14, filename: 'notebook.png', content_type: 'image/png')

les_profondeurs = Drawing.create(title: "Les profondeurs", date: 2019, theme_id: theme1.id)
notebook15 = File.open('app/assets/images/les_profondeurs.jpg')
les_profondeurs.photo.attach(io: notebook15, filename: 'notebook.png', content_type: 'image/png')

#-------------------illustrations---------------------------------#

crisscross = Drawing.create(title: "Crisscross", date: 2021, theme_id: theme2.id)
illu2 = File.open('app/assets/images/crisscross.jpg')
crisscross.photo.attach(io: illu2, filename: 'notebook.png', content_type: 'image/png')

bouquet = Drawing.create(title: "Le bouquet", date: 2015, theme_id: theme2.id)
illu4 = File.open('app/assets/images/le_bouquet.jpg')
bouquet.photo.attach(io: illu4, filename: 'notebook.png', content_type: 'image/png')

alice = Drawing.create(title: "Alice", date: 2015, theme_id: theme2.id)
illu1 = File.open('app/assets/images/alice.jpg')
alice.photo.attach(io: illu1, filename: 'notebook.png', content_type: 'image/png')

geometrie = Drawing.create(title: "Géométrie", date: 2016, theme_id: theme2.id)
illu3 = File.open('app/assets/images/geometrie.jpg')
geometrie.photo.attach(io: illu3, filename: 'notebook.png', content_type: 'image/png')

enfer = Drawing.create(title: "L'Enfer", date: 2016, theme_id: theme2.id)
illu5 = File.open('app/assets/images/enfer.jpg')
enfer.photo.attach(io: illu5, filename: 'notebook.png', content_type: 'image/png')

baies_vitrees = Drawing.create(title: "Les baies vitrées", date: 2021, theme_id: theme2.id)
illu6 = File.open('app/assets/images/les_baies_vitrees.jpg')
baies_vitrees.photo.attach(io: illu6, filename: 'notebook.png', content_type: 'image/png')

ivresse = Drawing.create(title: "L'ivresse du pouvoir", date: 2016, theme_id: theme2.id)
illu7 = File.open('app/assets/images/ivresse_du_pouvoir.jpg')
ivresse.photo.attach(io: illu7, filename: 'notebook.png', content_type: 'image/png')

metropolis = Drawing.create(title: "Metropolis", date: 2016, theme_id: theme2.id)
illu8 = File.open('app/assets/images/metropolis.jpg')
metropolis.photo.attach(io: illu8, filename: 'notebook.png', content_type: 'image/png')

goodbye = Drawing.create(title: "The Long Goodbye", date: 2021, theme_id: theme2.id)
illu9 = File.open('app/assets/images/the_long_goodbye.jpg')
goodbye.photo.attach(io: illu9, filename: 'notebook.png', content_type: 'image/png')

ville = Drawing.create(title: "Une ville", date: 2021, theme_id: theme2.id)
illu10 = File.open('app/assets/images/une_ville.jpg')
ville.photo.attach(io: illu10, filename: 'notebook.png', content_type: 'image/png')

up_and_down = Drawing.create(title: "Up and down", date: 2021, theme_id: theme2.id)
illu11 = File.open('app/assets/images/up_and_down.jpg')
up_and_down.photo.attach(io: illu11, filename: 'notebook.png', content_type: 'image/png')

puts "#{Drawing.all.length} drawings created"

