# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
    {
        id: "user1",
        name: "user1",
        email: "user1@temp.com"
    }, {
        id: "user2",
        name: "user2",
        email: "user2@temp.com"
    }
])

Follow.create!([
    {
        id: "follow1",
        user_id: "user1",
        followed_id: "user2"
    }, {
        id: "follow2",
        user_id: "user2",
        followed_id: "user1"
    }
])

Message.create!([
    {
        id: "message1",
        user_id: "user1",
        sent_user_id: "user2",
        message: "user1dayo"
    }, {
        id: "message2",
        user_id: "user2",
        sent_user_id: "user1",
        message: "user2dayo"
    }
])

Tweet.create!([
    {
        id: "tweet1",
        user_id: "user1",
        tweet: "tweet1"
    }, {
        id: "tweet2",
        user_id: "user1",
        tweet: "tweet2"
    }, {
        id: "tweet3",
        user_id: "user2",
        tweet: "tweet1"
    }
])

Session.create!([
    {
        user_id: nil
    }, {
        user_id: nil
    }
])

Password.create!([
    {
        user_id: "user1",
        password: "hogehoge",
        password_confirmation: "hogehoge"
    }, {
        user_id: "user2",
        password: "hugahuga",
        password_confirmation: "hugahuga"
    }
])