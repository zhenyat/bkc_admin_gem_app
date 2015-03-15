# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create role: 3, name: 'zt', email: 'zt@mail.ru', password: '123123123'

Category.create name: 'computers',   title: 'ПК'
Category.create name: 'notebooks',   title: 'Ноутбуки'
Category.create name: 'disks',       title: 'Диски'
Category.create name: 'smartphones', title: 'Смартфоны'

category_id = Category.find_by(name: 'computers').id
Product.create category_id: category_id, brand: 1, name: 'imac', title: 'iMac', end_of_life: "2016-12-31"
Product.create category_id: category_id, brand: 0, name: 'pavillion', title: 'Pavillion', end_of_life: "2017-07-31"

category_id = Category.find_by(name: 'notebooks').id
Product.create category_id: category_id, brand: 1, name: 'macbook', title: 'MacBook', end_of_life: "2015-12-31"
