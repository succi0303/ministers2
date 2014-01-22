# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach('db/ministers.csv') do |row|
  Minister.create(
    successive: row[0],
    name: row[1],
    tenure: row[2],
    days: row[3],
    age: row[4],
    birthdate: row[5],
    deathdate: row[6],
    birthplace: row[7]
  )
end
