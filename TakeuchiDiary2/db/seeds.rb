# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do |i|
  Article.create!(
    user_id: rand(1..3),
    title: "seeddata",
    author: "seed",
    body: "this is seed no.#{i}",
    image: open("app/assets/images/takenoko.png")
  )
end

