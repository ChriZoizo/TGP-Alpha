require 'faker'
 #Creation City
10.times do 
  City.create!(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)

end

#Creation User
30.times do |user|
User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 12), email: Faker::Internet.email, age: Faker::Number.number(digits: 2), city_id: City.ids.sample)

end

#Creation Gossip
60.times do 
    Gossip.create!(title: Faker::Lorem.sentence(word_count: 2), content: Faker::Lorem.sentence(word_count: 5),user_id: User.ids.sample, create_date: Faker::Date.between(from: '2015-09-23', to: '2020-10-30') )
   
  end


#Creation Tag
15.times do
  Tag.create!(title: Faker::Lorem.word)
 
end


#Creation GossipTag
150.times do 
    GossipTag.create!(gossip_id: Gossip.ids.sample, tag_id: Tag.ids.sample)
  end


#Creation Private Message
100.times do 
  n = rand(34..102)
    PrivateMessage.create!(content: Faker::Lorem.sentence(word_count: n), sender_id: User.ids.sample)
  end

#Creation PMUSER (table de relation entre PM et USER)
60.times do
 PmUser.create!(recipient_id: User.ids.sample, private_message_id: User.ids.sample)

end