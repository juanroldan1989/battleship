# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Setting up Users..."

User.create(name: "Player 1")
User.create(name: "Player 2")

puts "Done !"

puts
puts "Setting up Ships..."

Ship.create(
  user_id:  1,
  title:    "Aircraft carrier",
  location: ["a1", "a2", "a3", "a4", "a5"],
  size:     5
)

Ship.create(
  user_id:  1,
  title:    "Battleship",
  location: ["b1", "b2", "b3", "b4"],
  size:     4
)

Ship.create(
  user_id:  1,
  title:    "Cruiser",
  location: ["c1", "c2", "c3"],
  size:     3
)

Ship.create(
  user_id:  1,
  title:    "Destroyer",
  location: ["d1", "d2"],
  size:     2
)

Ship.create(
  user_id:  1,
  title:    "Submarine",
  location: ["e1"],
  size:     1
)

Ship.create(
  user_id:  2,
  title:    "Aircraft carrier",
  location: ["j1", "j2", "j3", "j4", "j5"],
  size:     5
)

Ship.create(
  user_id:  2,
  title:    "Battleship",
  location: ["i7", "i8", "i9", "i10"],
  size:     4
)

Ship.create(
  user_id:  2,
  title:    "Cruiser",
  location: ["h6", "h7", "h8"],
  size:     3
)

Ship.create(
  user_id:  2,
  title:    "Destroyer",
  location: ["f10", "g10"],
  size:     2
)

Ship.create(
  user_id:  2,
  title:    "Submarine",
  location: ["a10"],
  size:     1
)

puts "Done!"
