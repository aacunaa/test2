# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  business = Business.create({name: Faker::Company.name, budget: Faker::Number.between(100000, 1000000), date_end: Faker::Date.forward(365)})
  business.stage.create({name: Faker::Job.field, budget_stage: Faker::Number.between(1000000, 10000000)})
end