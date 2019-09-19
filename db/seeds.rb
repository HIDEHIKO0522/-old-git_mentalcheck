# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "csv"

# questions_csv = CSV.readlines("db/questions.csv")
# questions_csv.each do |row|
  Question.create(text: "頭痛がおこる", category: "1")
# end