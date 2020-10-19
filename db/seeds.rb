require 'pry'


shaina = Customer.find_or_create_by(given_name: "Shaina", family_name: "Kulbersh")
callie = Customer.find_or_create_by(given_name: "Callie", family_name: "Dog")
shaina2 = Customer.find_or_create_by(given_name: "Shaina", family_name: "Kulbersh")

nantucket = Restaurant.find_or_create_by(name: "Nantucket's Reef")
reginas = Restaurant.find_or_create_by(name: "Regina's Pizzeria")


review1 = Review.find_or_create_by(customer_id: shaina.id, restaurant_id: reginas.id, rating: 5)
review2 = Review.find_or_create_by(customer_id: callie.id, restaurant_id: nantucket.id, rating: 5)
review3 = Review.find_or_create_by(customer_id: shaina2.id, restaurant_id: reginas.id, rating: 4)

binding.pry
#review2 = Review.new(shaina, reginas, 5)
# review3 = Review.new(ben, reginas, 5)
# review4 = Review.new(ben, reginas, 3)