# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Productgroup.create(name: 'beverages', description: 'at least 2 liters per person and day', food_group: true, min_weight: 28000)
Productgroup.create(name: 'carb', description: 'grain, grain products, bread, potatoes, noodles, rice', food_group: true, min_weight: 4900)
Productgroup.create(name: 'vegetables', description: 'vegetables legumes', food_group: true, min_weight: 5600)
Productgroup.create(name: 'fruit', description: 'fruit, nuts', food_group: true, min_weight: 3600)
Productgroup.create(name: 'dairy products', description: 'milk, dairy products', food_group: true, min_weight: 3700)
Productgroup.create(name: 'protein', description: 'fish, meat, eggs, or whole egg powder', food_group: true, min_weight: 2100)
Productgroup.create(name: 'fat', description: 'fat, oil', food_group: true, min_weight: 0.5)

storage_location = StorageLocation.create(name: 'food cupboard', description: 'cupboard in the kitchen')
manufacturer = Manufacturer.create(name: 'the nuke ;-)')
productgroup = Productgroup.create(name: 'nuke lemonade', description: 'increases TP, Rad and AP', food_group: true, min_weight: 0)
product = Product.create(name: 'cherry nuke', description: 'deliciously irradiated', manufacturer_id: manufacturer.id, barcode: '123456', weight: 1000, productgroup_id: productgroup.id)
Entity.create(product_id: product.id, best_before_date: 9999-12-31, storage_location_id: storage_location.id)
