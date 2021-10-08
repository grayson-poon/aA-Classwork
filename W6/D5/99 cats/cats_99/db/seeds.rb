# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cat1 = Cat.create(birth_date: "1920-10-10", color: "black", name: "Bike", sex: "M", description: "ajsdlkj") # .create = .new AND .save
cat2 = Cat.create(birth_date: "2021-01-01", color: "orange", name: "Mike", sex: "M", description: "ajsdlkj")
cat3 = Cat.create(birth_date: "2000-12-12", color: "calico", name: "Hike", sex: "F", description: "ajsdlkj")
cat4 = Cat.create(birth_date: "1999-01-01", color: "gray", name: "Nike", sex: "F", description: "ajsdlkj")