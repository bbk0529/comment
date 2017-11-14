# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  User.create(
    name: Faker::Beer.name,
    email: Faker::Internet.email,
    password: Faker::Hipster.words
  )
end


20.times do
  Post.create(
    title: Faker::Hipster.sentences(1)[0],
    content: Faker::ChuckNorris.fact,
    user_id: (1..20).to_a.sample
  )
end
