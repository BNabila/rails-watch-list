# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Bookmark.destroy_all
Movie.destroy_all

puts "Creating Movie..."
movie1 = { title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9 }
movie2 = { title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7 }
movie3 = { title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9 }
movie4 = { title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0 }

[ movie1, movie2, movie3, movie4 ].each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end

puts "Finished Movies !"

puts 'Cleaning list database...'
List.destroy_all

puts "Creating lists..."
disney = { name: "Disney", movie_url: "https://d1fmx1rbmqrxrr.cloudfront.net/cnet/optim/i/edit/2018/10/disney-770__w770.jpg" }
action = { name: "Action", movie_url: "https://www.programme-tv.net/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ftel.2F2019.2F04.2F19.2F3b0b6d2b-1cb3-4e9d-aa17-3c7774bd4411.2Ejpeg/1200x600/crop-from/top/quality/80/cr/wqkgU0lQQQ%3D%3D/netflix-notre-top-10-des-meilleurs-films-d-action-disponibles-sur-la-plateforme-svod.jpg"}
romance = { name: "Romance", movie_url: "https://images.6play.fr/v2/images/3468674/raw?blur=0&fit=scale_crop&format=jpeg&height=630&interlace=1&quality=60&width=1200&hash=f1cd7218611bf03feb06596dea526373528a73a8" }

[ disney, action, romance ].each do |attributes|
  list = List.create!(attributes)
  puts "Created #{list.name }"
end

puts "Finished lists!"
