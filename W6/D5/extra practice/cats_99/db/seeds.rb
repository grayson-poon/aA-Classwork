# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create(birth_date: "01-01-2020", color: "red", name: "mike", sex: "M")
cat2 = Cat.create(birth_date: "02-01-2000", color: "black", name: "bike", sex: "M")
cat3 = Cat.create(birth_date: "11-11-1999", color: "blue", name: "nike", sex: "F")
cat4 = Cat.create(birth_date: "05-05-2012", color: "grey", name: "hike", sex: "F")
cat5 = Cat.create(birth_date: "10-10-1900", color: "orange", name: "like", sex: "M")

# color not included
cat10 = Cat.create(birth_date: "10-10-1900", color: "brown", name: "fail", sex: "M")