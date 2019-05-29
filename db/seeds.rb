# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ghosts = [
  {name: 'LumberJack', picture: "IMG_8336.JPG"},
  {name: 'Angel', picture: "IMG_8331.JPG"},
  {name: 'Monster', picture: "IMG_8333.JPG"},
  {name: 'Bob', picture: "IMG_8335.JPG"},
  {name: 'Jo', picture: "IMG_8334.JPG"},
  {name: 'Ghosty', picture: "IMG_8332.JPG"},
  {name: 'Birdly', picture: "IMG_8330.JPG"},
  {name: 'Colorful', picture: "IMG_8329.JPG"},
  {name: 'Kidly', picture: "IMG_8328.JPG"},
]

ghosts.each do |ghost|
  ghost_name = "#{ghost[:name]}!"
  Ghost.find_or_create_by(name: ghost_name) do |new_ghost|
    new_ghost.picture = ghost[:picture]
  end
end
