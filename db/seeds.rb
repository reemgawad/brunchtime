# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Visit.destroy_all
Restaurant.destroy_all
User.destroy_all

# users
user_one = User.create!(
  {
    email: "l@l.l",
    first_name: "Lien",
    password: "secret"
  }
)

# Restaurants
restaurant_one = Restaurant.new(
  {
    name: "Barley",
    address: "2613 Notre-Dame St W, Montreal, Quebec H3J 1N9",
    description: "Straightforward eatery serving health-conscious brunch, smoothies & cocktails, plus vegan options.",
    price_range: "$$",
    opening_hours: "9am-4pm",
    phone_number: "514-379-6455",
    wait_time: "15 min"

  }
)
restaurant_one.photo.attach(io: File.open('app/assets/images/barley.png'), filename: 'barley.png')
restaurant_one.save!

restaurant_two = Restaurant.new(
  {
    name: "Resto-Café Quoi De N'Oeuf",
    address: "2745 Notre-Dame St W, Montreal, Quebec H3J 1N9",
    description: "Creative egg dishes, crêpes & French toast in a trendy space with art on the walls.",
    price_range: "$$",
    opening_hours: "Tuesday	7am-2pm
    Wednesday	7am-2pm
    Thursday	7am-2:30pm
    Friday	7am-2:30pm
    Saturday	8am-2:45pm
    Sunday	8am-2:45pm
    Monday	7:30am-2:30pm",
    phone_number: "514-931-3999",
    wait_time: "10 min"

  }
)
restaurant_two.photo.attach(io: File.open('app/assets/images/neuf.png'), filename: 'neuf.png')
restaurant_two.save!

restaurant_three = Restaurant.new(
  {
    name: "Restaurant L'Avenue",
    address: "2745 Notre-Dame St W, Montreal, Quebec H3J 1N9",
    description: "Buzzy locale with graffiti-scrawled walls known for its imaginative brunch plates & huge smoothies.",
    price_range: "$$",
    opening_hours: "8am-4pm",
    phone_number: "438-387-3668",
    wait_time: "15 min"

  }
)
restaurant_three.photo.attach(io: File.open('app/assets/images/avenue.png'), filename: 'avenue.png')
restaurant_three.save!

restaurant_four = Restaurant.new(
  {
    name: "Arthurs Nosh Bar",
    address: "4621 Notre-Dame St W, Montreal, Quebec H4C 1S5",
    description: "Traditional Jewish deli serving breakfast & sandwiches in a bright, stylish space.",
    price_range: "$$",
    opening_hours: "Tuesday	Closed
    Wednesday	9am-3pm
    Thursday	9am-3pm
    Friday	9am-3pm
    Saturday	9am-4pm
    Sunday	9aam-4pm
    Monday	9am-3pm",
    phone_number: "514-757-5190",
    wait_time: "20 min"

  }
)
restaurant_four.photo.attach(io: File.open('app/assets/images/arthurs.png'), filename: 'arthurs.png')
restaurant_four.save!

restaurant_five = Restaurant.new(
  {
    name: "Foiegwa",
    address: "3001 Notre-Dame St W, Montreal, Quebec H4C 1N9",
    description: "Stylish, contemporary haunt serving gourmet regional fare & brunch, plus cocktails & milkshakes.",
    price_range: "$$$",
    opening_hours: "Tuesday	6pm-11pm
    Wednesday	6pm-11pm
    Thursday	6pm-11:30pm
    Friday	10am-2:30pm, 6pm-11:30pm
    Saturday	9:30am-3pm, 6pm-11:45pm
    Sunday	9:30am-3pm, 6pm-11pm
    Monday	6pm-11pm",
    phone_number: "438-387-4252",
    wait_time: "30 min"

  }
)
restaurant_five.photo.attach(io: File.open('app/assets/images/foiegwa.png'), filename: 'foiegwa.png')
restaurant_five.save!

restaurant_six = Restaurant.new(
  {
    name: "Maman",
    address: "1524 RUE NOTRE-DAME OUEST, MONTREAL, QC",
    description: "Classic, rustic charming place serving baked goods, brunch and hot beverages,",
    price_range: "$$",
    opening_hours: "Tuesday	8am-4pm
    Wednesday	8am-4pm
    Thursday	8am-4pm
    Friday	8am-4pm
    Saturday	9am-4pm
    Sunday	9am-4pm
    Monday	8am-4pm",
    phone_number: "514-933-1412",
    wait_time: "20 min"

  }
)
restaurant_six.photo.attach(io: File.open('app/assets/images/foiegwa.png'), filename: 'foiegwa.png')
restaurant_six.save!

# Visits
visit_one = Visit.new(
  {
    date: Date.today,
    feedback: "Waited 12 min. Wait-time accurate.",
    rating: 4,
    arrived: true
  }
)
visit_one.user = user_one
visit_one.restaurant = restaurant_one
visit_one.save!

visit_two = Visit.new(
  {
    date: Date.today,
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
    date: Date.today,
    feedback: "Waited longer than expected. 40 min instead of 20",
    rating: 2,
    arrived: true
  }
)
visit_three.user = user_one
visit_three.restaurant = restaurant_four
visit_three.save!

visit_four = Visit.new(
  {
    date: Date.today
  }
)
visit_four.user = user_one
visit_four.restaurant = restaurant_two
visit_four.save!
