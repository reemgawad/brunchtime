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
    email: "p@p.p",
    first_name: "Philou",
    password: "secret"
  }
)

user_two = User.create!(
  {
    email: "l@l.l",
    first_name: "Lien",
    password: "secret"
  }
)

user_three = User.create!(
  {
    email: "r@r.r",
    first_name: "Reem",
    password: "secret"
  }
)

user_four = User.create!(
  {
    email: "g@g.g",
    first_name: "Gwlad",
    password: "secret"
  }
)

user_five = User.create!(
  {
    email: "laura@email.com",
    first_name: "Laura",
    password: "secret"
  }
)

user_six = User.create!(
  {
    email: "paul@email.com",
    first_name: "Paul",
    password: "secret"
  }
)

user_seven = User.create!(
  {
    email: "sam@email.com",
    first_name: "Sam",
    password: "secret"
  }
)

user_eight = User.create!(
  {
    email: "billy@email.com",
    first_name: "Billy",
    password: "secret"
  }
)

user_nine = User.create!(
  {
    email: "chloe@email.com",
    first_name: "Chloe",
    password: "secret"
  }
)

user_ten = User.create!(
  {
    email: "louis@email.com",
    first_name: "Louis",
    password: "secret"
  }
)

user_eleven = User.create!(
  {
    email: "bob@email.com",
    first_name: "Bob",
    password: "secret"
  }
)

user_twelve = User.create!(
  {
    email: "marie@email.com",
    first_name: "Marie",
    password: "secret"
  }
)
puts "Done."
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
restaurant_three.photo.attach(io: File.open('app/assets/images/avenue.jpg'), filename: 'avenue.jpg')
restaurant_three.save!

restaurant_four = Restaurant.new(
  {
    name: "Arthurs Nosh Bar",
    address: "4621 RUE NOTRE-DAME OUEST, MONTREAL",
    description: "Traditional Jewish deli serving breakfast & sandwiches in a bright, stylish space.",
    price_range: "$$",
    opening_hours: "9am-5pm",
    phone_number: "514-757-5190",
    wait_time: 30

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
    wait_time: 5

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
    price_range: "$",
    opening_hours: "7am-9pm",
    phone_number: "514-379-4449",
    wait_time: 10

  }
)
restaurant_eight.photo.attach(io: File.open('app/assets/images/ginko.jpeg'), filename: 'ginko.jpeg')
restaurant_eight.save!

restaurant_nine = Restaurant.new(
  {
    name: "Dandy",
    address: "244 RUE ST JACQUES, MONTREAL",
    description: "Chic restaurant serving all-day brunch, pizza & baked goods, plus coffee, cocktails & natural wines.",
    price_range: "$$$",
    opening_hours: "10am-4pm",
    phone_number: "514-289-9996",
    wait_time: 60

  }
)
restaurant_nine.photo.attach(io: File.open('app/assets/images/dandy.jpeg'), filename: 'dandy.jpeg')
restaurant_nine.save!

restaurant_ten = Restaurant.new(
  {
    name: "Tommy Café",
    address: "151 RUE ST PAUL OUEST, MONTREAL",
    description: "This opulently quaint bi-level coffee shop with historical architecture serves sweets & sandwiches.",
    price_range: "$$",
    opening_hours: "8am-4pm",
    phone_number: "514-419-8522",
    wait_time: 15

  }
)
restaurant_ten.photo.attach(io: File.open('app/assets/images/tommy.jpeg'), filename: 'tommy.jpeg')
restaurant_ten.save!

puts "Done."
print "Seeding visits..."

# Visits
# resto1

visit_onea = Visit.new(
  {
    date: Date.today - 5,
    feedback: "Waited 12 min. Wait-time close to accurate.",
    rating: 4,
    arrived: true
  }
)
visit_onea.user = user_four
visit_onea.restaurant = restaurant_one
visit_onea.save!

visit_oneb = Visit.new(
  {
    date: Date.today - 3,
    feedback: "Wait-time was a bit longer than announced. (still worth it !)",
    rating: 3,
    arrived: true
  }
)
visit_oneb.user = user_eight
visit_oneb.restaurant = restaurant_one
visit_oneb.save!

visit_onec = Visit.new(
  {
    date: Date.today - 11,
    feedback: "Wait time was showing 30 min and we got a table in 35min ! AWESOME 😁 ",
    rating: 5,
    arrived: true
  }
)
visit_onec.user = user_seven
visit_onec.restaurant = restaurant_one
visit_onec.save!

visit_oned = Visit.new(
  {
    date: Date.today - 20,
    feedback: "Wait time was fairly accurate !",
    rating: 4,
    arrived: true
  }
)
visit_oned.user = user_six
visit_oned.restaurant = restaurant_one
visit_oned.save!

visit_onee = Visit.new(
  {
    date: Date.today - 36,
    feedback: "We unfortunately had to wait 20min longer than expected to get a table!",
    rating: 2,
    arrived: true
  }
)
visit_onee.user = user_eleven
visit_onee.restaurant = restaurant_one
visit_onee.save!

# resto2
visit_foura = Visit.new(
  {
    date: Date.today - 14,
    feedback: "20min wait not 10. Was double what I expected.",
    rating: 1,
    arrived: true
  }
)
visit_foura.user = user_four
visit_foura.restaurant = restaurant_two
visit_foura.save!

visit_fourb = Visit.new(
  {
    date: Date.today - 3,
    feedback: "Got a table within expected time , thanks brunchtime 🍳",
    rating: 4,
    arrived: true
  }
)
visit_fourb.user = user_six
visit_fourb.restaurant = restaurant_two
visit_fourb.save!

visit_fourc = Visit.new(
  {
    date: Date.today - 10,
    feedback: "Accuracy was pretty good; we had to wait an extra 5min - not too bad ",
    rating: 4,
    arrived: true
  }
)
visit_fourc.user = user_ten
visit_fourc.restaurant = restaurant_two
visit_fourc.save!

visit_fourd = Visit.new(
  {
    date: Date.today - 30,
    feedback: "Busy as usual but waiting time was accurately displayed",
    rating: 3,
    arrived: true
  }
)
visit_fourd.user = user_twelve
visit_fourd.restaurant = restaurant_two
visit_fourd.save!

visit_foure = Visit.new(
  {
    date: Date.today - 3,
    feedback: "The accuracy was off; we showed up hoping to wait for 45min but waited 20min extra 😡",
    rating: 1,
    arrived: true
  }
)
visit_foure.user = user_eight
visit_foure.restaurant = restaurant_two
visit_foure.save!

visit_fourf = Visit.new(
  {
    date: Date.today - 40,
    feedback: "Great time accuracy",
    rating: 5,
    arrived: true
  }
)
visit_fourf.user = user_three
visit_fourf.restaurant = restaurant_two
visit_fourf.save!

visit_fourg = Visit.new(
  {
    date: Date.today - 7,
    feedback: "Fair accuracy. Only waited an extra 10min.",
    rating: 4,
    arrived: true
  }
)
visit_fourg.user = user_seven
visit_fourg.restaurant = restaurant_two
visit_fourg.save!


# resto3

visit_twoa = Visit.new(
  {
    date: Date.today - 30,
    feedback: "Waited 10 min. Faster than expected wait-time :)",
    rating: 4,
    arrived: true
  }
)
visit_twoa.user = user_three
visit_twoa.restaurant = restaurant_three
visit_twoa.save!

visit_twob = Visit.new(
  {
    date: Date.today - 10,
    feedback: "spot on !",
    rating: 5,
    arrived: true
  }
)
visit_twob.user = user_seven
visit_twob.restaurant = restaurant_three
visit_twob.save!

visit_twoc = Visit.new(
  {
    date: Date.today - 6,
    feedback: "Waited 1h to be seated but it was showing 40min",
    rating: 2,
    arrived: true
  }
)
visit_twoc.user = user_eleven
visit_twoc.restaurant = restaurant_three
visit_twoc.save!

visit_twod = Visit.new(
  {
    date: Date.today - 15,
    feedback: "Waiting time was as expected",
    rating: 4,
    arrived: true
  }
)
visit_twod.user = user_ten
visit_twod.restaurant = restaurant_three
visit_twod.save!

visit_twoe = Visit.new(
  {
    date: Date.today - 27,
    feedback: "Great accuracy ! Very helpful to find the best places without bad long waits!",
    rating: 4,
    arrived: true
  }
)
visit_twoe.user = user_nine
visit_twoe.restaurant = restaurant_three
visit_twoe.save!

# resto4

visit_threea = Visit.new(
  {
    date: Date.today - 10,
    feedback: "Waited close to 2 HOURS 🤡",
    rating: 1,
    arrived: true
  }
)
visit_threea.user = user_two
visit_threea.restaurant = restaurant_four
visit_threea.save!

visit_threeb = Visit.new(
  {
    date: Date.today - 37,
    feedback: "Waited 20min more than expected to be seated",
    rating: 3,
    arrived: true
  }
)
visit_threeb.user = user_five
visit_threeb.restaurant = restaurant_four
visit_threeb.save!

visit_threec = Visit.new(
  {
    date: Date.today - 23,
    feedback: "Only waited 10min ore than advertised to get a table",
    rating: 4,
    arrived: true
  }
)
visit_threec.user = user_ten
visit_threec.restaurant = restaurant_four
visit_threec.save!

# resto5

visit_fivea = Visit.new(
  {
    date: Date.today - 7,
    feedback: "Waited a little bit over an hour. As expected.",
    rating: 4,
    arrived: true
  }
)
visit_fivea.user = user_three
visit_fivea.restaurant = restaurant_five
visit_fivea.save!

visit_fiveb = Visit.new(
  {
    date: Date.today - 2,
    feedback: "Spot on ! We even got a table faster than we thought",
    rating: 5,
    arrived: true
  }
)
visit_fiveb.user = user_nine
visit_fiveb.restaurant = restaurant_five
visit_fiveb.save!

visit_fivec = Visit.new(
  {
    date: Date.today - 19,
    feedback: "Actual wait time was only 10min longer than displayed",
    rating: 4,
    arrived: true
  }
)
visit_fivec.user = user_two
visit_fivec.restaurant = restaurant_five
visit_fivec.save!

visit_fived = Visit.new(
  {
    date: Date.today - 20,
    feedback: "Great accuracy, we got a table within the time range the app was showing",
    rating: 4,
    arrived: true
  }
)
visit_fived.user = user_eleven
visit_fived.restaurant = restaurant_five
visit_fived.save!

# resto6

visit_sevena = Visit.new(
  {
    date: Date.today - 21,
    feedback: "Quick queue. Wait time was spot on.",
    rating: 5,
    arrived: true
  }
)
visit_sevena.user = user_four
visit_sevena.restaurant = restaurant_six
visit_sevena.save!

visit_sevenb = Visit.new(
  {
    date: Date.today - 3,
    feedback: "Advertised wait time was actually on point; we've waited around 30min once there to get a table (wait time on app was 20min)",
    rating: 4,
    arrived: true
  }
)
visit_sevenb.user = user_twelve
visit_sevenb.restaurant = restaurant_six
visit_sevenb.save!

visit_sevenc = Visit.new(
  {
    date: Date.today - 37,
    feedback: "Had to wait 20min longer than we thought to get a table :/",
    rating: 3,
    arrived: true
  }
)
visit_sevenc.user = user_eight
visit_sevenc.restaurant = restaurant_six
visit_sevenc.save!

visit_sevend = Visit.new(
  {
    date: Date.today - 23,
    feedback: "Fairly accurate actual wait time compared to the app",
    rating: 4,
    arrived: true
  }
)
visit_sevend.user = user_six
visit_sevend.restaurant = restaurant_six
visit_sevend.save!

# resto7

visit_eighta = Visit.new(
  {
    date: Date.today - 4,
    feedback: "Waited approx 20min. Teeny bit faster than expected",
    rating: 4,
    arrived: true
  }
)
visit_eighta.user = user_three
visit_eighta.restaurant = restaurant_seven
visit_eighta.save!

visit_eightb = Visit.new(
  {
    date: Date.today - 10,
    feedback: "Good wait-time accuracy",
    rating: 5,
    arrived: true
  }
)
visit_eightb.user = user_eleven
visit_eightb.restaurant = restaurant_seven
visit_eightb.save!

visit_eightc = Visit.new(
  {
    date: Date.today - 27,
    feedback: "Time accuracy was pretty good -  we waited 35min to have a table (VS 30min)",
    rating: 5,
    arrived: true
  }
)
visit_eightc.user = user_five
visit_eightc.restaurant = restaurant_seven
visit_eightc.save!

# resto8

visit_ninea = Visit.new(
  {
    date: Date.today - 3,
    feedback: "Always 10min wait. Great service and so quick to be seated ⚡️",
    rating: 5,
    arrived: true
  }
)
visit_ninea.user = user_two
visit_ninea.restaurant = restaurant_eight
visit_ninea.save!

visit_nineb = Visit.new(
  {
    date: Date.today - 20,
    feedback: "Wait time accuracy was perfect!Only 15min to get a table.",
    rating: 4,
    arrived: true
  }
)
visit_nineb.user = user_ten
visit_nineb.restaurant = restaurant_eight
visit_nineb.save!

visit_ninec = Visit.new(
  {
    date: Date.today - 40,
    feedback: "Waited as expected in line, than got our delicious brunch!",
    rating: 4,
    arrived: true
  }
)
visit_ninec.user = user_eight
visit_ninec.restaurant = restaurant_eight
visit_ninec.save!

# resto9

visit_tena = Visit.new(
  {
    date: Date.today - 3,
    feedback: "A long wait. Sadly did wait 60min.",
    rating: 5,
    arrived: true
  }
)
visit_tena.user = user_one
visit_tena.restaurant = restaurant_nine
visit_tena.save!

visit_tenb = Visit.new(
  {
    date: Date.today - 29,
    feedback: "We actually had to wait an extra 20min to be seated.",
    rating: 3,
    arrived: true
  }
)
visit_tenb.user = user_seven
visit_tenb.restaurant = restaurant_nine
visit_tenb.save!

visit_tenc = Visit.new(
  {
    date: Date.today - 7,
    feedback: "Waited 10min more than expected than got a table. So worth it to use ! ",
    rating: 4,
    arrived: true
  }
)
visit_tenc.user = user_six
visit_tenc.restaurant = restaurant_nine
visit_tenc.save!

# resto10

visit_sixa = Visit.new(
  {
    date: Date.today - 11,
    feedback: "Waited exactly 15 min!",
    rating: 5,
    arrived: true
  }
)
visit_sixa.user = user_two
visit_sixa.restaurant = restaurant_ten
visit_sixa.save!

visit_sixb = Visit.new(
  {
    date: Date.today - 7,
    feedback: "Got our table in 20min , just as it shown on the app!",
    rating: 5,
    arrived: true
  }
)
visit_sixb.user = user_four
visit_sixb.restaurant = restaurant_ten
visit_sixb.save!

visit_sixc = Visit.new(
  {
    date: Date.today - 21,
    feedback: "Actually had to wait an extra 20min to be seated - Always worth it though!  ",
    rating: 3,
    arrived: true
  }
)
visit_sixc.user = user_six
visit_sixc.restaurant = restaurant_ten
visit_sixc.save!

visit_sixd = Visit.new(
  {
    date: Date.today - 44,
    feedback: "Pretty accurate - We even got our table 10min sooner than expected!",
    rating: 4,
    arrived: true
  }
)
visit_sixc.user = user_eight
visit_sixc.restaurant = restaurant_ten
visit_sixc.save!

puts "Done."

# restaurant_eleven = Restaurant.new(
#   {
  #     name: "Ginko Café & BarTEST",
  #     address: "308 RUE STE-CATHERINE EST, MONTREAL",
  #     description: "Popular brunch spot serving eclectic Canadian fare in a chic, open room with lots of natural light.",
#     price_range: "$",
#     opening_hours: "7am-9pm",
#     phone_number: "514-379-4449",
#     wait_time: 10

#   }
# )
# restaurant_eleven.photo.attach(io: File.open('app/assets/images/ginko.jpeg'), filename: 'ginko.jpeg')
# restaurant_eleven.save!

Restaurant.all.each do |restaurant|
  restaurant.update_avg_rating
  restaurant.save
end
