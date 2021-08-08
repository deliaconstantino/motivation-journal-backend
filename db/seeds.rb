# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_entry = Entry.create(body: "Today is a good day to write a nice chunk of code. Productivity is always worth it.", time_interval: 2.0)
second_entry = Entry.create(body: "Learned about James Clear the other week. His book is a great read if you're looking for motivation. He talks about using a 2 minute timer to start implementing better habits. The core idea of this is that anyone can do pretty much anything for just 2 minutes. Love this idea for developing better habits.", time_interval: 5.0)

quote1 = Quote.create!(body: "The best way to get started is to quit talking and begin doing.", author: "Walt Disney")
quote2 = Quote.create!(body: "The pessimist sees difficulty in every opportunity. The optimist sees opportunity in every difficulty.", author: "Winston Churchill")
quote3 = Quote.create!(body: "Don’t let yesterday take up too much of today.", author: "Will Rogers")
quote4 = Quote.create!(body: "You learn more from failure than from success. Don’t let it stop you. Failure builds character.", author: "Unknown")
quote5 = Quote.create!(body: "If you are working on something that you really care about, you don’t have to be pushed. The vision pulls you.", author: "Steve Jobs")
quote6 = Quote.create!(body: "We may encounter many defeats but we must not be defeated.", author: "Maya Angelou")
quote7 = Quote.create!(body: "We generate fears while we sit. We overcome them by action.", author: "Dr. Henry Link")
quote8 = Quote.create!(body: "Whether you think you can or think you can’t, you’re right.", author: "Henry Ford")
quote9 = Quote.create!(body: "Security is mostly a superstition. Life is either a daring adventure or nothing.", author: "Helen Keller")
quote10 = Quote.create!(body: "For every reason it’s not possible, there are hundreds of people who have faced the same circumstances and succeeded.", author: "Jack Canfield")

motivation = Keyword.create!(name: "motivation")
peace = Keyword.create!(name: "peace")
fun = Keyword.create!(name: "fun")
