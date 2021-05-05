# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_entry = Entry.create(body: "Today is a good day to write a nice chunk of code. Productivity is always worth it.", time_interval: 2.0)
second_entry = Entry.create(body: "Learned about James Clear the other week. His book is a great read if you're looking for motivation. He talks about using a 2 minute timer to start implementing better habits. The core idea of this is that anyone can do pretty much anything for just 2 minutes. Love this idea for developing better habits.", time_interval: 5.0)
