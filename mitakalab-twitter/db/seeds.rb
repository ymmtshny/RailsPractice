# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.new
@user.name = 'Shinya Yamamoto'
@user.username = 'shinyamamoto'
@user.location = 'Tokyo, JP'
@user.about = 'Hello, my name is Shinya Yamamoto. Nice to meet you.'
@user.save

@user = User.new
@user.name = 'Alex'
@user.username = 'alex'
@user.location = 'Riverside, CA'
@user.about = 'Hello, my name is Alex. How are you doing today?'
@user.save