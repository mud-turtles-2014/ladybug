mich = User.create(username:"michelle", password:"password", password_confirmation:"password", first_name:"Michelle", last_name:"Chu", email:"michelle@gmail.com")
sarah = User.create(username:"sarah", password:"password", password_confirmation:"password", first_name:"Sarah", last_name:"Taurchini", email:"sarah@gmail.com")
nic = User.create(username:"nicolle", password:"password", password_confirmation:"password", first_name:"Nicolle", last_name:"Quintero", email:"nicolle@gmail.com")
becca = User.create(username:"becca", password:"password", password_confirmation:"password", first_name:"Becca", last_name:"Bagnall", email:"becca@example.com")
matt = User.create(username:"matt", password:"password", password_confirmation:"password", first_name:"Matt", last_name:"Taurchini", email:"matt@example.com")
tim = User.create(username:"tim", password:"password", password_confirmation:"password", first_name:"Timothy", last_name:"Taurchini", email:"tim@example.com")
kristin = User.create(username:"kris", password:"password", password_confirmation:"password", first_name:"Kristin", last_name:"Taurchini", email:"kris@example.com")
bigler = User.create(username:"bigler", password:"password", password_confirmation:"password", first_name:"Alex", last_name:"Bigler", email:"bigler@example.com")
sam = User.create(username:"sam", password:"password", password_confirmation:"password", first_name:"Sam", last_name:"Blackman", email:"sam@example.com")
steven = User.create(username:"steven", password:"password", password_confirmation:"password", first_name:"Steven", last_name:"Cassidy", email:"steven@example.com")
courteney = User.create(username:"courteney", password:"password", password_confirmation:"password", first_name:"Courteney", last_name:"Ervin", email:"courteney@example.com")
bunday = User.create(username:"bunday", password:"password", password_confirmation:"password", first_name:"Matt", last_name:"Bunday", email:"bunday@example.com")
kimberly = User.create(username:"kimberly", password:"password", password_confirmation:"password", first_name:"Kimberly", last_name:"Cookie", email:"cookie@example.com")

texan_vacay = Trip.create(user: mich, name:"Texan Rodeo Tour", description:"Yeehaw!!", budget:500)
actors_delight = Trip.create(user: sarah, name:"Theatre Tour of America", description:"Something about herefords", budget:1500)
euro_trip = Trip.create(user: nic, name:"Euro-Trippin", description:"Living my life like it's golden", budget:2500)
pac_trip = Trip.create(user: kristin, name:"Pacific Tour", description:"Seeing the west... or is it far east?", budget: 2000)
east_euro = Trip.create(user: matt, name:"Eastern European Trip", description: "Cheap because we can't afford the Euro", budget: 750)
gb = Trip.create(user:tim, name:"Royal Tour", description:"Because I'm king of the world", budget: 3000)
rando = Trip.create(user:bigler, name:"Hodgepodge Trip", description: "Disparate locations and way too much air time", budget: 1750)
us_states = Trip.create(user:kimberly, name:"ROAD TRIP", description: "Like the name says", budget: 1250)
french = Trip.create(user: becca, name:"Francophile's delight", description:"Places where they speak French", budget: 1600)

houston = Location.create(name:"Houston TX USA")
austin = Location.create(name:"Austin TX USA")
dallas = Location.create(name:"Dallas TX USA")
dc = Location.create(name:"Washington DC USA")
charleston = Location.create(name:"Charleston SC USA")
ny = Location.create(name:"New York NY USA")
miami = Location.create(name: "Miami FL USA")
paris = Location.create(name:"Paris France")
london = Location.create(name:"London England")
rome = Location.create(name:"Rome Italy")
prague = Location.create(name:"Prague Czechoslovakia")
auckland = Location.create(name:"Auckland New Zealand")
leeds = Location.create(name:"Leeds England")
edinborough = Location.create(name:"Edinborough Scotland")
oahu = Location.create(name:"Oahu HI USA")
strassbourg = Location.create(name: "Strassbourg France")
tokyo = Location.create(name: "Tokyo Japan")
mumbai = Location.create(name: "Mumbai India")
stowe = Location.create(name:"Stowe VT USA")
montreal = Location.create(name:"Montreal Quebec Canada")
kiev = Location.create(name:"Kiev Russia")
sydney = Location.create(name:"Sydney Australia")
chicago = Location.create(name:"Chicago IL USA")
oberau = Location.create(name:"Oberau Austria")
munich = Location.create(name:"Munich Germany")
cairo = Location.create(name:"Cairo Egypt")
budapest = Location.create(name:"Budapest Hungary")

30.times do
  Leg.create(location: Location.all.sample, trip: Trip.all.sample, start_date: Time.now, end_date: Time.now)
end

# texan_vacay_1 = Leg.create(location: houston, trip: texan_vacay, start_date: Time.now, end_date: Time.now)
# texan_vacay_2 = Leg.create(location: austin, trip: texan_vacay, start_date: Time.now, end_date: Time.now)
# texan_vacay_3 = Leg.create(location: dallas, trip: texan_vacay, start_date: Time.now, end_date: Time.now)

# actors_delight_1 = Leg.create(location: dc, trip: actors_delight, start_date: Time.now, end_date: Time.now)
# actors_delight_2 = Leg.create(location: charleston, trip: actors_delight, start_date: Time.now, end_date: Time.now)
# actors_delight_3 = Leg.create(location: ny, trip: actors_delight, start_date: Time.now, end_date: Time.now)

# euro_trip_1 = Leg.create(location: paris, trip: euro_trip, start_date: Time.now, end_date: Time.now)
# euro_trip_2 = Leg.create(location: london, trip: euro_trip, start_date: Time.now, end_date: Time.now)
# euro_trip_3 = Leg.create(location: rome, trip: euro_trip, start_date: Time.now, end_date: Time.now)

# pac_trip_1 = Leg.create(location: auckland, trip: pac_trip, start_date: Time.now, end_date: Time.now)
# pac_trip_2 = Leg.create(location: tokyo, trip: pac_trip, start_date: Time.now, end_date: Time.now)
# pac_trip_3 = Leg.create(location: mumbai, trip: pac_trip, start_date: Time.now, end_date: Time.now)

# east_euro_1 = Leg.create(location: budapest, trip: east_euro, start_date: Time.now, end_date: Time.now)
# east_euro_2 = Leg.create(location: prague, trip: east_euro, start_date: Time.now, end_date: Time.now)
# east_euro_3 = Leg.create(location: kiev, trip: east_euro, start_date: Time.now, end_date: Time.now)

# gb_1 = Leg.create(location: edinborough, trip: gb, start_date: Time.now, end_date: Time.now)
# gb_2 = Leg.create(location: leeds, trip: gb, start_date: Time.now, end_date: Time.now)
# gb_3 = Leg.create(location: london, trip: gb, start_date: Time.now, end_date: Time.now)

# rando_1 = Leg.create(location: sydney, trip: rando, start_date: Time.now, end_date: Time.now)
# rando_2 = Leg.create(location: cairo, trip: rando, start_date: Time.now, end_date: Time.now)
# rando_3 = Leg.create(location: oberau, trip: rando, start_date: Time.now, end_date: Time.now)
# rando_4 = Leg.create(location: munich, trip: rando, start_date: Time.now, end_date: Time.now)

# us_states_1 = Leg.create(location: chicago, trip: us_states, start_date: Time.now, end_date: Time.now)
# us_states_2 = Leg.create(location: stowe, trip: us_states, start_date: Time.now, end_date: Time.now)
# us_states_3 = Leg.create(location: oahu, trip: us_states, start_date: Time.now, end_date: Time.now)

# french_1 = Leg.create(location: montreal, trip: french, start_date: Time.now, end_date: Time.now)
# french_2 = Leg.create(location: strassbourg, trip: french, start_date: Time.now, end_date: Time.now)
# french_3 = Leg.create(location: paris, trip: french, start_date: Time.now, end_date: Time.now)

food = Category.create(name:"Food")
housing = Category.create(name:"Housing")
transportation = Category.create(name:"Transportation")
shopping = Category.create(name:"Shopping")
activities = Category.create(name:"Activities")
misc = Category.create(name:"Miscellaneous")

# whattaburger = Expense.create(cost:30.50, description:"Lunch at whattaburger", category: food, leg: texan_vacay_1, date: Time.now)
# rodeo = Expense.create(cost:112, description:"Rodeo night show", category: activities, leg: texan_vacay_2, date: Time.now)
# barn = Expense.create(cost:400, description:"Hotel stay at the Barn", category: housing, leg: texan_vacay_3, date: Time.now)

# sad_happy_masks = Expense.create(cost:44.99, description:"Sad face, happy face wall decor", category: shopping, leg: actors_delight_1, date: Time.now)
# improv_class = Expense.create(cost:432, description:"Week long improv class", category: activities, leg: actors_delight_2, date: Time.now)
# mcdonalds = Expense.create(cost:12, description:"McDonalds dinner", category: food, leg: actors_delight_3, date: Time.now)

# wine = Expense.create(cost:19.99, description:"White wine bottle as gift for boyfriend", category: shopping, leg: euro_trip_1, date: Time.now)
# pasta = Expense.create(cost:49.59, description:"Dinner at pasta place", category: food, leg: euro_trip_2, date: Time.now)
# bungee_jumping = Expense.create(cost:49.59, description:"Bungee jumping from the colleseum - bad call", category: food, leg: euro_trip_3, date: Time.now)

100.times do
  Expense.create(cost: 24.99, description:"Test", category: Category.all.sample, leg: Leg.all.sample, date: Time.now)
end

texan_vacay_buddy_1 = Buddy.create(name:"Steph")
texan_vacay_buddy_2 = Buddy.create(name:"Anthony")

actors_delight_buddy_1 = Buddy.create(name:"Chris")
actors_delight_buddy_2 = Buddy.create(name:"Alex")

euro_trip_buddy_1 = Buddy.create(name:"Katherine")
euro_trip_buddy_2 = Buddy.create(name:"Francisco")

pac_trip_buddy_1 = Buddy.create(name:"Rafael")
pac_trip_buddy_1 = Buddy.create(name:"Imogen")

gb_buddy_1 = Buddy.create(name:"Jessica")
gb_buddy_1 = Buddy.create(name:"Alyssa")

east_euro_buddy_1 = Buddy.create(name:"Marissa")
east_euro_buddy_1 = Buddy.create(name:"Melissa")

rando_buddy_1 = Buddy.create(name:"Lloyd")
rando_buddy_1 = Buddy.create(name:"Seamus")

us_states_buddy_1 = Buddy.create(name:"Cole")
us_states_buddy_1 = Buddy.create(name:"Nathan")

french_buddy_1 = Buddy.create(name:"Austin")
french_buddy_1 = Buddy.create(name:"Christian")


ExpenseBuddy.create(buddy: texan_vacay_buddy_1, expense: Expense.all.sample)
ExpenseBuddy.create(buddy: texan_vacay_buddy_1, expense: Expense.all.sample)
ExpenseBuddy.create(buddy: texan_vacay_buddy_2, expense: Expense.all.sample)

ExpenseBuddy.create(buddy: actors_delight_buddy_1, expense: Expense.all.sample)
ExpenseBuddy.create(buddy: actors_delight_buddy_2, expense: Expense.all.sample)
ExpenseBuddy.create(buddy: actors_delight_buddy_1, expense: Expense.all.sample)
ExpenseBuddy.create(buddy: actors_delight_buddy_2, expense: Expense.all.sample)

ExpenseBuddy.create(buddy: euro_trip_buddy_1, expense: Expense.all.sample)
ExpenseBuddy.create(buddy: euro_trip_buddy_1, expense: Expense.all.sample)
ExpenseBuddy.create(buddy: euro_trip_buddy_2, expense: Expense.all.sample)

20.times do
  ExpenseBuddy.create(buddy: Buddy.all.sample, expense: Expense.all.sample)
end
