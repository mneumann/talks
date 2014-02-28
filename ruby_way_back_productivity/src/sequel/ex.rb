require 'sequel'

# Sqlite memory database
DB = Sequel.open 'sqlite:/'

# Table items
items = DB[:items]

p items.sql
# SELECT * FROM items

p items.filter {:category == 'ruby'}.order(:price).sql
# SELECT * FROM items WHERE (category = 'ruby') ORDER BY price

p items.filter {:price.in(100..200) && :category.nil?}.sql
# SELECT * FROM items WHERE ((price >= 100 AND price <= 200) AND 
#                           (category IS NULL))
