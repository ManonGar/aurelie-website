# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Drawing.destroy_all
puts 'Destroying Drawings'

Theme.destroy_all
puts 'Destroying Themes'



#-----------------------------------------------------------------#
puts 'Creating themes'

theme1 = Theme.create(name: "Notebooks")
theme2 = Theme.create(name: "Illustrations")

puts "#{Theme.all.length} themes created"

#-------------------------------------------------------------------#
puts 'Creating Drawings'

Drawing.create(title: "Cascade Cities", date: 2019, theme_id: theme1.id)
Drawing.create(title: "Cinq sur Cinq", date: 2021, theme_id: theme1.id)
Drawing.create(title: "Circle of life", date: 2021, theme_id: theme1.id)
Drawing.create(title: "Crumbling palaces", date: 2020, theme_id: theme1.id)
Drawing.create(title: "Darling Manhattan", date: 2020, theme_id: theme1.id)



Drawing.create(title: "les escaliers", date: 2017, theme_id: theme2.id)

puts "#{Drawing.all.length} drawings created"

