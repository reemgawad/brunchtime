# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
print "Cleaning up db..."
Visit.destroy_all
Restaurant.destroy_all
User.destroy_all
puts "Done."
print "Seeding users..."

# users
user_one = User.create!(
  {
    email: "l@l.l",
    first_name: "Lien",
    password: "secret"
  }
)

print "Seeding restaurants..."
# Restaurants
restaurant_one = Restaurant.new(
  {
    name: "Barley",
    address: "2613 RUE NOTRE-DAME OUEST, MONTREAL",
    description: "Straightforward eatery serving health-conscious brunch, smoothies & cocktails, plus vegan options.",
    price_range: "$$",
    opening_hours: "9am-6pm",
    phone_number: "514-379-6455",
    wait_time: 15
  }
)
restaurant_one.photo.attach(io: File.open('app/assets/images/barley.jpeg'), filename: 'barley.jpeg')
restaurant_one.save!

restaurant_two = Restaurant.new(
  {
    name: "Resto-Café Quoi De N'Oeuf",
    address: "2745 RUE NOTRE-DAME OUEST, MONTREAL",
    description: "Creative egg dishes, crêpes & French toast in a trendy space with art on the walls.",
    price_range: "$$",
    opening_hours: "7:30am-6:30pm",
    phone_number: "514-931-3999",
    wait_time: 10

  }
)
restaurant_two.photo.attach(io: File.open('app/assets/images/neuf.jpeg'), filename: 'neuf.jpeg')
restaurant_two.save!

restaurant_three = Restaurant.new(
  {
    name: "Restaurant L'Avenue",
    address: "3612 RUE NOTRE-DAME OUEST, MONTREAL",
    description: "Buzzy locale with graffiti-scrawled walls known for its imaginative brunch plates & huge smoothies.",
    price_range: "$$",
    opening_hours: "9am-7:30pm",
    phone_number: "514-524-6663",
    wait_time: 15

  }
)
restaurant_three.photo.attach(io: File.open('app/assets/images/avenue.jpeg'), filename: 'avenue.jpeg')
restaurant_three.save!

restaurant_four = Restaurant.new(
  {
    name: "Arthurs Nosh Bar",
    address: "4621 RUE NOTRE-DAME OUEST, MONTREAL",
    description: "Traditional Jewish deli serving breakfast & sandwiches in a bright, stylish space.",
    price_range: "$$",
    opening_hours: "9am-5pm",
    phone_number: "514-757-5190",
    wait_time: 5

  }
)
restaurant_four.photo.attach(io: File.open('app/assets/images/arthurs.jpeg'), filename: 'arthurs.jpeg')
restaurant_four.save!

restaurant_five = Restaurant.new(
  {
    name: "Foiegwa",
    address: "3001 RUE NOTRE-DAME OUEST, MONTREAL",
    description: "Stylish, contemporary haunt serving gourmet regional fare & brunch, plus cocktails & milkshakes.",
    price_range: "$$$",
    opening_hours: "6pm-11pm",
    phone_number: "438-387-4252",
    wait_time: 60

  }
)
restaurant_five.photo.attach(io: File.open('app/assets/images/foiegwa.jpeg'), filename: 'foiegwa.jpeg')
restaurant_five.save!

restaurant_six = Restaurant.new(
  {
    name: "Maman",
    address: "1524 RUE NOTRE-DAME OUEST, MONTREAL, QC",
    description: "Classic, rustic charming place serving baked goods, brunch and hot beverages.",
    price_range: "$$",
    opening_hours: "8am-4pm",
    phone_number: "514-933-1412",
    wait_time: 20

  }
)
restaurant_six.photo.attach(io: File.open('app/assets/images/maman.png'), filename: 'maman.png')
restaurant_six.save!

restaurant_seven = Restaurant.new(
  {
    name: "Le Passé Composé",
    address: "1310 BOUL DE MAISONNEUVE EST, MONTREAL",
    description: "Petite corner bistro for French brunch featuring refined seasonal egg dishes, crêpes & sandwiches.",
    price_range: "$$$",
    opening_hours: "9am-2:30pm",
    phone_number: "514-933-1412",
    wait_time: 25

  }
)
restaurant_seven.photo.attach(io: File.open('app/assets/images/passe.jpeg'), filename: 'passe.jpeg')
restaurant_seven.save!

restaurant_eight = Restaurant.new(
  {
    name: "Ginko Café & Bar",
    address: "308 RUE STE-CATHERINE EST, MONTREAL",
    description: "Popular brunch spot serving eclectic Canadian fare in a chic, open room with lots of natural light.",
    price_range: "$$",
    opening_hours: "7am-9pm",
    phone_number: "514-379-4449",
    wait_time: 10

  }
)
restaurant_eight.photo.attach(io: File.open('app/assets/images/ginko.jpeg'), filename: 'ginko.jpeg')
restaurant_eight.save!

puts "Done."
print "Seeding visits..."

# Visits
visit_one = Visit.new(
  {
    date: Date.today - 5,
    feedback: "Waited 12 min. Wait-time close to accurate.",
    rating: 4,
    arrived: true
  }
)
visit_one.user = user_one
visit_one.restaurant = restaurant_one
visit_one.save!

visit_two = Visit.new(
  {
    date: Date.today - 30,
    feedback: "Waited 10 min. Faster than expected wait-time :)",
    rating: 4,
    arrived: true
  }
)
visit_two.user = user_one
visit_two.restaurant = restaurant_three
visit_two.save!

visit_three = Visit.new(
  {
    date: Date.today - 10,
    feedback: "Long as always but wait time accurate.",
    rating: 2,
    arrived: true
  }
)
visit_three.user = user_one
visit_three.restaurant = restaurant_four
visit_three.save!

visit_four = Visit.new(
  {
    date: Date.today - 14
  }
)
visit_four.user = user_one
visit_four.restaurant = restaurant_two
visit_four.save!
puts "Done."

visit_five = Visit.new(
  {
    date: Date.today - 7,
    feedback: "Waited 25 min instead of 30 min.",
    rating: 4,
    arrived: true
  }
)
visit_five.user = user_one
visit_five.restaurant = restaurant_five
visit_five.save!

visit_six = Visit.new(
  {
    date: Date.today - 11,
    feedback: "Waited exactly 20 min!",
    rating: 5,
    arrived: true
  }
)
visit_six.user = user_one
visit_six.restaurant = restaurant_six
visit_six.save!
