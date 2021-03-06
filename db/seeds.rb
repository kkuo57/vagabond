# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
City.destroy_all
Article.destroy_all

cities = [
  {city_name:"Tokyo", country:"Japan", pic:"tokyo1.jpg"},
  {city_name:"San Francisco, CA", country:"USA", pic:"sf1.jpg"},
  {city_name:"Topeka, KS", country:"USA", pic:"topeka1.jpg"},
  {city_name:"Mogadishu", country:"Somalia", pic:"mogadishu1.jpg"},
  {city_name:"Gibraltar", country:"Gibraltar", pic:"gibraltar1.jpg"},
  {city_name:"Beijing", country:"China", pic:"beijing1.jpg"},
  {city_name:"Cairo", country:"Egypt", pic:"Cairo1.jpg"},
  {city_name:"Pawnee, IN", country:"USA", pic:"pawnee1.jpg"},
  {city_name:"Reykjavik", country:"Iceland", pic:"reykjavik1.jpg"},
  {city_name:"Christchurch", country:"New Zealand", pic:"cc1.jpg"},
]

users = [
  {first_name:"Will", last_name:"Kaspar", current_city:"SF", email:"w@k", password:"w"},
  {first_name:"Kevin", last_name:"Kuo", current_city:"SF", email:"k@k", password:"k"},
  {first_name:"Tim", last_name:"Smith", current_city:"SF", email:"t@s", password:"t"}
]


City.create(cities)
User.create(users)
