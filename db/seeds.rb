# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Home.create({"host_id": host_id,
#   "lat": lat,
#   "lng": lng,
#   "title": title,
#   "price": price,
#   "address": address,
#   "bathrooms": bathrooms,
#   "bedrooms": bedrooms,
#   "max_guests": max_guests,
#   "beds": beds,
#   "property_type": property_type,
#   "room_type": room_type,
#   "internet": internet,
#   "family": family,
#   "parking": parking,
#   "kitchen": kitchen,
#   "description": description,
#   "cancellation": cancellation,
#   "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/sea-landscape-sunset-290098.jpeg"
# })

def lat # NYC
  (40.350000 + rand()*1.2)
end

def lng # NYC
  (-75.00000 + rand()*1.2)
end

def title
  (Faker::Pokemon.location)
end

def price
  (rand(49..500))
end

def address
   (Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.country)
end

def bathrooms
  (rand(1..5))
end

def bedrooms
  (rand(1..6))
end

def max_guests
  (rand(2..12))
end

def beds
  (rand(1..8))
end

def property_type
  ["House","Mansion","Farmhouse","RV","Apartment"].sample
end

def room_type
  ["Entire home/apt", "Private Room", "Shared Room"].sample
end

def internet
  [true, false].sample
end

def family
  [true, false].sample
end

def parking
  [true, false].sample
end

def kitchen
  [true, false].sample
end

def description
  ["Beautiful, newly renovated apartment. Very clean(really) and quiet.
Has a fully equipped kitchen, cable tv, smart tv, wifi troughout.
Located a stone throw away from the Freedom tower, Wall Street, NYSE, Shopping malls, Battery Park City, Hudson River boardwalk, Statue of Liberty ferry, Federal Reserve Bank, Goldman Sachs and more. All within 5 min walk from my place.
I would love to share my love of New York City with you.
Я говорю по русски. Пишите, спрашивайте.
Thank you and see you soon.

The space

Designed with home in mind, all of the pieces were carefully selected to make you feel cozy. Lots of clean towels, sheets and essentials for a comfortable stay in my place.

Interaction with guests

I love New York, especially Downtown and Finacial district, Battery Park city promenade and the marina. Got my sailors license there. Would love to show you my favorite places or advice you on where to go. We have it all down here! And the clean air, and water, and beautiful parks.", "Brand newly refurbished, spacious garden apartment of a traditional Brooklyn frame-house, with 2 bedrooms: 1 bedroom at the front and a light-filled bedroom at the back with access to lovely garden. This apt is spacious, sparsely furnished and has tons of closet space.

The space

It's a comfortable spacious garden apartment, with lots of windows and a nice airy feel.

Guest access

Guests have an entirely private access to their apartment, through their own front door.

Interaction with guests

I'd be happy to help with whatever needs or questions you may have.

Other things to note

You are lucky enough to have a gorgeous light-filled private garden in which you can enjoy a sunny breakfast around the table, sit in deck chairs on the grass and even water the plants and flowers if this brings you peace :)", "New to market is this renovated 2 bedrooms 1 Bath apartment. This apartment is ideally located across from the JMZ train Aberdeen St / Bushwick Ave stop.

This large 2 bedroom apartment features:
Hardwood floors, Large living area.
large bedrooms, sun-drenched apartment.
High ceiling, Granite counters.
Close to shopping and Gourmet.
Steps from trains & MTA Buses.", "Walking distance to train station. 20 minutes from Manhattan. 10 minutes from Laguardia Airport and Citi Field.
Plenty of restaurants within walking distance.

Fully equipped home. It's literally home away from home as the title states.

We are locals, and can assist with any questions about the town if needed. We live in the vicinity and is available at any time of the day to answer questions.

The space

The whole apartment to yourself.

Interaction with guests

I am available via phone, text or in person any time of the day.

", "Classic Brooklyn Brownstone. Suite 627 is a spacious 1 bedroom apt with private entry. Living room, full kitchen and bath on the second floor on quiet tree-lined block in historic Bedford-Stuyvesant, Brooklyn. Built in 1899, Suite 627 features original architectural details, such as hardwood floors, fireplaces and built-ins. Accommodates 4 with a queen bed and convertible sofa. Close to subway for easy access to Manhattan. Short cab ride from both JFK and LaGuardia airports.

The space

Suite 627 is a comfortable oasis. You have the entire floor and features a private entryway. All inclusive amenities include Wi-fi, air conditioning, laptop work-space and smart TV to access your favorite apps. Perfect for couples retreat, family get-a-way or business traveler.

Interaction with guests

My family and I occupy the lower levels of the home and have been residents of Bedford Stuyvesant for over 20 years. We enjoy everything about our neighborhood--friends, family, and friends who are extended family. I am a self professed HGTV enthusiast. I love watching the magic that happens when people love their house and transform it into a home. I apply these learnings to my own home and by extension Suite 627.

Suite 627 is waiting for you to join in on the good people, great diverse food, beautiful art and non-stop culture. So many things to do and see! Don't wait, book Suite 627 now!

We can't wait to have you as our guest!", "Windows to the NYC VIEW ...
One of 2 bedrooms that place is good for solo adventurers, business travelers, and furry friends (pets)
Or even a light traveling couple for a romantic escape!

Guest access

All available for the guest within apartment, parking pass, washer and dryer , blow dryer, ice machine, blenders etc

Other things to note

All available for the guest within apartment, parking pass, washer and dryer , blow dryer, ice machine, blenders etc",
"Easily the BEST VALUE you can find!!!
ツ Did you come to NYC to waste time on the subway?
- NO! Stay in the city center with amazing nightlife, exquisite restaurants, world famous broadway shows & major tourist attractions.
ツ Tired of old NYC apartments that are falling apart?
- Stay in a stylish renovated bedroom for the fraction of the hotel cost.
ツ Had bad experience with unreliable hosts?
- Not on my watch! You are my Alpha & Omega and I am here to SERVE YOU! Check out my reviews.

The space

Cannot get better than THIS
☺ Completely renovated apartment full of art and style
☺ Cozy bedroom with all essentials provided
☺ Extensive guidebook to discover the best places in NYC
☺ Flying Speed Internet (100mb+) to stream/download/work/play all you want

", "The space

Stay in this state-of-the art 2 Bedrooms steps away from Times Square.

Apartment Features:

** Elevator building with 24Hr doorman
** Apartment with splendid City views
** Unit featuring lots of windows throughout entire apartment
** Kitchen finishes include white granite countertops, appliances, built-in microwave and custom cabinetry
** Wireless internet available
** Flat screen TV with cable package channels
** Comfortable sofa in living room
** Dining table seats 4
** Washer / Dryer in the apartment
** Spacious Closets
** Parquet wood flooring
** Towels and Linens provided free of charge
** Complimentary breakfast provided
Apartment Amenities:

• Oversized windows
• Rift cut white oak floors
• Bosch washer and dryer

• Chef’s Kitchen:
– Whitewashed oak cabinetry
– Natural calacatta backsplash
– Caesarstone countertop
– Bertazzoni range and microwave
– Stainless steel refrigerator and dishwasher

• Baths:
– Moss Lappato porcelain floors and shower wall
– White Caesarstone vanity top
– Rift cut white oak vanity with matching custom medicine cabinet
– Soaking tub

Guest access

Doorman, Lounge, Gym, Roof Top hot jacuzzi, Pet Friendly, Tv, Wifi, AC, Central Air, Kitchen, Dishwasher, Dishes, Elevator

Interaction with guests

we can put portable bed on air mattress, if you need, pls write me.

Other things to note

Please note that if you do not meet the 11:00 AM check-out deadline. If you have a flight later on in the day, you can store your luggage until your flight at our other place for free.", "I'm temporarily renting my freshly renovated 2bds at the border between Clinton-Hill and the up-and-coming Bedford-Stuyvesand neighborhoods. The apartment has apparent brick walls, lot of plants, brand new furnitures and furnished kitchen. The building features an equipped rooftop (with view on Manhattan), a laundry and gym amenities.

The space

The whole apartment is fully renovated, same for the whole building, rooftop, backyard, laundry, and gym.

Both rooms have queen-sized beds and hangers. Bed linens and towels are of course included.

The living room has an apparent brick wall, is furnished with brand new furnitures, design objects, lot of plants and a video-projector.

The kitchen is an american kitchen shared with the living room. It's fully furnished with brand new equipment.

There's high speed wifi in the whole apartment. Every room have its own AC.

The building has a nice rooftop with a view on Brooklyn mainly and bits of Manhattan. But it's a small building, please don't expect a fully surrounding view of Manhattan."].sample
end

def cancellation
  (["Flexible", "Moderate", "Strict"].sample)
end

users = [
User.create({"email": "guest@live.com",
  "first": "Ronald",
  "last": "McDonald",
  "password": "asdf1234",
  "month": 5,
  "day": 11,
  "year": 1980,
  }),
User.create({
  "email": "david@qydc.com",
  "first": "Dav",
  "last": "Chen",
  "password": "password123",
  "month": 5,
  "day": 12,
  "year": 1991,
  })
]

101.times do |i|
  Home.create({"host_id": users.sample.id,
    "lat": lat,
    "lng": lng,
    "title": title,
    "price": price,
    "address": address,
    "bathrooms": bathrooms,
    "bedrooms": bedrooms,
    "max_guests": max_guests,
    "beds": beds,
    "property_type": property_type,
    "room_type": room_type,
    "internet": internet,
    "family": family,
    "parking": parking,
    "kitchen": kitchen,
    "description": description,
    "cancellation": cancellation,
    "image": "https://s3.amazonaws.com/safehavns-dev/seeds/#{i}.jpg"
  })
end



10.times do |i|
  Trip.create({
    visitor_id: User.all.sample.id,
    home_id: Home.all.sample.id,
    start_date: Time.at(rand * Time.now.to_i),
    end_date: Time.at(rand * Time.now.to_i),
    num_guests: 1,
    totalcost: rand(200..5000),
    }
  )
end
