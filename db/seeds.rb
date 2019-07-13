User.destroy_all
Channel.destroy_all
Message.destroy_all
UserChannel.destroy_all
Reply.destroy_all


# 10.times do 
#     name = Faker::App.name
#     Channel.create(name: "#" + name)
# end

# 20.times do 
#     name = Faker::FunnyName.two_word_name
#     username = name.split(' ').join('').downcase
#     email = Faker::Internet.email
#     cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
#     password_digest = BCrypt::Password.create('p@ssw0rd', cost: cost)
#     user = User.create(username: username, name: name, email: email, password_digest: password_digest) 

    
#     10.times do 
#         channel = Channel.all.sample
#         associations = UserChannel.create(user_id: user.id, channel_id: channel.id)
#         content = Faker::Hipster.sentence
#         message = Message.create(user_id: user.id, channel_id: channel.id, content: content, likes: 0)
#         Reply.create(user_id: user.id, message_id: message.id, content: Faker::Hipster.sentence)
#     end

# end


#     name = "Caleb Watters"
#     username = 'calebwatters'
#     email = 'caleb@watters.io'
#     cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
#     password_digest = BCrypt::Password.create('123456', cost: cost)
#     user = User.create(username: username, name: name, email: email, password_digest: password_digest) 
#     channel = Channel.create(name: '#TestChannel')
#     UserChannel.create(user_id: user.id, channel_id: channel.id)

#         name2 = "Bob The Builder"
#     username2 = 'bobbyboy'
#     email2 = 'bobby@bobby.io'
#     cost2 = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
#     password_digest2 = BCrypt::Password.create('123456', cost: cost2)
#     user2 = User.create(username: username2, name: name2, email: email2, password_digest: password_digest2) 
#     UserChannel.create(user_id: user2.id, channel_id: channel.id)




