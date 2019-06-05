# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Restaurant.destroy_all

    Restaurant.create(name: 'Mickey Ds', address: '52 Magenta', phone_number: '0131-333-4444', category: 'italian')
    Restaurant.create(name: 'Mr Donut', address: '12 Rosso Av', phone_number: '0121-333-4444', category: 'chinese')
    Restaurant.create(name: 'Chez Fred', address: '8 The Lark', phone_number: '0321-555-4444', category: 'japanese')
    Restaurant.create(name: 'Chez Fred', address: '8 The Lark', phone_number: '0321-555-4444', category: 'japanese')
    Restaurant.create(name: 'Wellington', address: '55 Screaming Donkey Way', phone_number: '0555-333-4444', category: 'french')
