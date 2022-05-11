# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all


10.times { |x| city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code) }
 
10.times { |x| user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, age: rand(18..99), city_id: City.all.sample) }

10.times { |x| tag = Tag.create(title: Faker::Lorem.words) }

20.times do |x| 
  gossip = Gossip.new(title: Faker::Lorem.words(number: 4),content: Faker::Lorem.sentence(word_count: 8))
  gossip.user_id = User.all.sample.id
  gossip.save
end



=begin

40.times do |x|
  join = JoinTableGossipTag.create(gossip_id: Gossip.all., tag_id: Tag.all.sample.id)
end



# Mettre un tag sur chaque gossip:
Gossip.all.each do |gossip|
  JoinTableGossipTags.create(gossip: gossip, tag: Tag.all.sample)
end

10.times do |x|
  message = PrivateMessage.new(sender: User.all.sample, recipient: User.all.sample, content: Faker::Lorem.words(number: 5)) 
end



Gossip.all.each do |comments|
  5.times do
    comment = Comment.create(
      content: Faker::Quotes::Shakespeare.hamlet_quote,
      author_id: User.find(rand(User.first.id..User.last.id)).id,
      gossip_id: comments.id
    )
  end
end

=end