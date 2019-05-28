# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ghosts = [
  {name: 'LumberJack', picture: "IMG_8336.jpg"},
  {name: 'Angel', picture: "IMG_8331.jpg"},
  {name: 'Monster', picture: "IMG_8333.jpg"},
  {name: 'Bob', picture: "IMG_8335.jpg"},
  {name: 'Jo', picture: "IMG_8334.jpg"},
  {name: 'Ghosty', picture: "IMG_8332.jpg"},
  {name: 'Birdly', picture: "IMG_8330.jpg"},
  {name: 'Colorful', picture: "IMG_8329.jpg"},
  {name: 'Kidly', picture: "IMG_8328.jpg"},
]

ghosts.each do |ghost|
  ghost_name = "#{ghost[:name]}!"
  Ghost.find_or_create_by(name: ghost_name) do |new_ghost|
    new_ghost.picture = ghost[:picture]
  end
end
