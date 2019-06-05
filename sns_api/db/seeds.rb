# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
    {
        name: "user1",
        password: "0001"
    }, {
         name: "user2",
        password: "0002"
    }
])

Follow.create!([
    {
        user_id: 1,
        followed_id: 2
    }, {
        user_id: 2,
        followed_id: 1
    }
])

SentMessage.create!([
    {
        user_id: 1,
        sent_user_id: 2,
        message: "user1dayo"
    }, {
        user_id: 2,
        sent_user_id: 1,
        message: "user2dayo"
    }
])

Tweet.create!([
    {
        user_id: 1,
        tweet: "tweet1"
    }, {
        user_id: 1,
        tweet: "tweet2"
    }, {
        user_id: 2,
        tweet: "tweet1"
    }
])
