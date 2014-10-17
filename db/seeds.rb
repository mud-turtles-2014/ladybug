mich = User.create(username:"michelle", password:"password", password_confirmation:"password", first_name:"Michelle", last_name:"Chu", email:"michelle@gmail.com")
sarah = User.create(username:"sarah", password:"password", password_confirmation:"password", first_name:"Sarah", last_name:"Taurchini", email:"sarah@gmail.com")
nic = User.create(username:"nicolle", password:"password", password_confirmation:"password", first_name:"Nicolle", last_name:"Quintero", email:"nicolle@gmail.com")


texan_vacay = Trip.create(user: mich, name:"Texan Rodeo Tour", description:"Yeehaw!!", budget:500)
actors_delight = Trip.create(user: sarah, name:"Theatre Tour of America", description:"Something about herefords", budget:1500)
euro_trip = Trip.create(user: nic, name:"Euro-Trippin", description:"Living my life like it's golden", budget:2500)

houston = Location.create(name:"Houston TX USA")
austin = Location.create(name:"Austin TX USA")
dallas = Location.create(name:"Dallas TX USA")

dc = Location.create(name:"Washington DC USA")
charleston = Location.create(name:"Charleston SC USA")
ny = Location.create(name:"New York NY USA")

paris = Location.create(name:"Paris France")
london = Location.create(name:"London England")
rome = Location.create(name:"Rome Italy")

texan_vacay_1 = Leg.create(location: houston, trip: texan_vacay, start_date: Time.now, end_date: Time.now)
texan_vacay_2 = Leg.create(location: austin, trip: texan_vacay, start_date: Time.now, end_date: Time.now)
texan_vacay_3 = Leg.create(location: dallas, trip: texan_vacay, start_date: Time.now, end_date: Time.now)

actors_delight_1 = Leg.create(location: dc, trip: actors_delight, start_date: Time.now, end_date: Time.now)
actors_delight_2 = Leg.create(location: charleston, trip: actors_delight, start_date: Time.now, end_date: Time.now)
actors_delight_3 = Leg.create(location: ny, trip: actors_delight, start_date: Time.now, end_date: Time.now)

euro_trip_1 = Leg.create(location: paris, trip: euro_trip, start_date: Time.now, end_date: Time.now)
euro_trip_2 = Leg.create(location: london, trip: euro_trip, start_date: Time.now, end_date: Time.now)
euro_trip_3 = Leg.create(location: rome, trip: euro_trip, start_date: Time.now, end_date: Time.now)

food = Category.create(name:"Food")
housing = Category.create(name:"Housing")
transportation = Category.create(name:"Transportation")
shopping = Category.create(name:"Shopping")
activities = Category.create(name:"Activities")
misc = Category.create(name:"Miscellaneous")

whattaburger = Expense.create(cost:30.50, description:"Lunch at whattaburger", category: food, leg: texan_vacay_1, date: Time.now)
rodeo = Expense.create(cost:112, description:"Rodeo night show", category: activities, leg: texan_vacay_2, date: Time.now)
barn = Expense.create(cost:400, description:"Hotel stay at the Barn", category: housing, leg: texan_vacay_3, date: Time.now)

sad_happy_masks = Expense.create(cost:44.99, description:"Sad face, happy face wall decor", category: shopping, leg: actors_delight_1, date: Time.now)
improv_class = Expense.create(cost:432, description:"Week long improv class", category: activities, leg: actors_delight_2, date: Time.now)
mcdonalds = Expense.create(cost:12, description:"McDonalds dinner", category: food, leg: actors_delight_3, date: Time.now)

wine = Expense.create(cost:19.99, description:"White wine bottle as gift for boyfriend", category: shopping, leg: euro_trip_1, date: Time.now)
pasta = Expense.create(cost:49.59, description:"Dinner at pasta place", category: food, leg: euro_trip_2, date: Time.now)
bungee_jumping = Expense.create(cost:49.59, description:"Bungee jumping from the colleseum - bad call", category: food, leg: euro_trip_3, date: Time.now)

texan_vacay_buddy_1 = Buddy.create(name:"Steph")
texan_vacay_buddy_2 = Buddy.create(name:"Anthony")

actors_delight_buddy_1 = Buddy.create(name:"Chris")
actors_delight_buddy_2 = Buddy.create(name:"Alex")

euro_trip_buddy_1 = Buddy.create(name:"Katherine")
euro_trip_buddy_2 = Buddy.create(name:"Francisco")

ExpenseBuddy.create(buddy: texan_vacay_buddy_1, expense: whattaburger)
ExpenseBuddy.create(buddy: texan_vacay_buddy_1, expense: rodeo)
ExpenseBuddy.create(buddy: texan_vacay_buddy_2, expense: rodeo)

ExpenseBuddy.create(buddy: actors_delight_buddy_1, expense: improv_class)
ExpenseBuddy.create(buddy: actors_delight_buddy_2, expense: improv_class)
ExpenseBuddy.create(buddy: actors_delight_buddy_1, expense: mcdonalds)
ExpenseBuddy.create(buddy: actors_delight_buddy_2, expense: mcdonalds)

ExpenseBuddy.create(buddy: euro_trip_buddy_1, expense: pasta)
ExpenseBuddy.create(buddy: euro_trip_buddy_1, expense: bungee_jumping)
ExpenseBuddy.create(buddy: euro_trip_buddy_2, expense: bungee_jumping)
