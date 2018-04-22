# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

products_csv = CSV.readlines("db/products.csv")
products_csv.shift
products_csv.each do |row|
  Product.create(product_grade: row[1], supplier: row[2], product_name: row[3], basis_weight: row[4], width: row[5], length: row[6], renryo: row[7], inventory: row[8], price: row[10], text: row[11])
end
