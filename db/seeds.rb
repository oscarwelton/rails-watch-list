# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# api_key = 'a49935f82cb2cc4353b9c01ed4c7c5cc'

puts "Cleaning database..."

Movie.destroy_all
p 'removing movies'
List.destroy_all
p 'removing lists'
Bookmark.destroy_all
p 'removing bookmarks'

puts "Creating fake database..."

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

List.create(name: "list 1")
List.create(name: "list 2")
List.create(name: "list 3")

puts "Finished!"

# 20.times do
#   url = 'www.youtube.com'
#   movie = Movie.create(
#     title: Faker::Movie.title,
#     overview: Faker::Movie.quote,
#     rating: rand(0..10),
#     poster_url: url
#   )
# end

    # fetch("http://www.omdbapi.com/?s=#{title}&apikey=#{api_key}")
    #   .then(response => response.json())
    #   .then((data) => {
    #     console.log(data)

    #     title: data.title

# 20.times do
#   restaurant = Restaurant.create(
#     name: Faker::Name.name,
#     address: Faker::Address.full_address,
#     category: category[rand(0..4)],
#     phone_number: Faker::PhoneNumber.phone_number_with_country_code
#   )
#     5.times do
#       review = Review.create(
#         rating: rand(0..5),
#         content: Faker::Restaurant.review,
#         restaurant_id: restaurant.id
#       )
#       puts "id: #{review.id}"
#     end
