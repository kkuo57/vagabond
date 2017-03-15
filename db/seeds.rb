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
  {city_name:"San Francisco, CA", country:"USA"},
  {city_name:"Tokyo", country:"Japan"},
  {city_name:"Topeka, KS", country:"USA"},
  {city_name:"Mogadishu", country:"Somalia"},
  {city_name:"Gibraltar", country:"Gibraltar"},
  {city_name:"Guangzhou", country:"China"},
  {city_name:"Cairo", country:"Egypt"},
  {city_name:"Pawnee, IN", country:"USA"},
  {city_name:"Reykjavik", country:"Iceland"},
  {city_name:"Christchurch", country:"New Zealand"},
]

City.create(cities)
