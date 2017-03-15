<<<<<<< HEAD
City.destroy_all

City.create([
  {
    city_name: "San Francisco", 
    country: "USA"
  }, 
  {
    city_name: "Los Angeles",
    country: "USA"
  }
])
=======
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
  {city_name:"London", country:"England"},
  {city_name:"Tokyo", country:"Japan"},
  {city_name:"Topeka, KS", country:"USA"},
  {city_name:"Mogadishu", country:"Somalia"},
  {city_name:"Gibraltar", country:"Gibraltar"},
  {city_name:"Beijing", country:"China"},
  {city_name:"Cairo", country:"Egypt"},
  {city_name:"Pawnee, IN", country:"USA"},
  {city_name:"Reykjavik", country:"Iceland"},
  {city_name:"Christchurch", country:"New Zealand"},
]

users = [
  {first_name:"Will", last_name:"Kaspar", current_city:"SF", email:"w@k", password:"w"},
  {first_name:"Kevin", last_name:"Kuo", current_city:"SF", email:"k@k", password:"k"},
  {first_name:"Tim", last_name:"Smith", current_city:"SF", email:"t@s", password:"t"}
]


City.create(cities)
User.create(users)
>>>>>>> c5f48428e0627cb0c58ce2a08b34304c5d97d8d1
