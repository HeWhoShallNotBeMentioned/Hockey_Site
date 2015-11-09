# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  ["cunderwoodmn@gmail.com", "password", "admin", "true"],
  ["cunderwoodmn@yahoo.com", "password", "Chris U"],
  ["mail@gmail.com", "password", "W. Gretzky"],
  ["Lemieux@hotmail.com", "password", "Le Magnifque"],
  ["Mikita@prodigy.com", "password", "S.Mikita"],
  ["S_Yzerman@AOL.com", "password", "Stevie_Y"],
]

user_list.each do |mail, pass, uname, admin|
  User.create( email: mail, password: pass, username: uname, admin: admin )
end
