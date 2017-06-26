# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def host_id
  (rand(1..2))
end

def lat
  (rand(0...70) - 140 + rand())
end

def lng
  (rand(0...180) - 180 + rand())
end

def title
  (Faker::Pokemon.location)
end

def price
  (rand(0..500))
end

def address
   (Faker::Address.street_address + ", " + Faker::Address.city + ", " + Faker::Address.country)
end

def bathrooms
  (rand(0..5)
end

def bedrooms
  (rand(0..6))
end

def max_guests
  (rand(0..12))
end

def beds
  (rand(0..8))
end

def property_type
  "House"
end

def room_type
  "Entire home/apt"
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
  Faker::Lorem.paragraph(2)
end

def cancellation
  (["Flexible", "Moderate", "Strict"].sample)
end

User.create({"email": "guest@live.com",
  "first": "Ronald",
  "last": "McDonald",
  "password": "asdf1234",
  "month": 5,
  "day": 11,
  "year": 1980})
User.create({
  "email": "david@qydc.com",
  "first": "Dav",
  "last": "Chen",
  "password": "password123",
  "month": 5,
  "day": 12,
  "year": 1991})


Home.create({"host_id": 1,
  "lat": 50,
  "lng": -77,
  "title": "SampleHouse",
  "price": 160,
  "address": "123 Flex Street",
  "bathrooms": 1.5,
  "bedrooms": 2,
  "max_guests": 6,
  "beds": 3,
  "property_type": "House",
  "room_type": "Entire home/apt",
  "internet": true,
  "family": true,
  "parking": true,
  "kitchen": true,
  "description": "this is a really long set state",
  "cancellation": "Flexible",
  "image": File.open('app/assets/images/houses/001.jpeg')
  })

Home.create({"host_id": 2,
  "lat": 52,
  "lng": -76.1,
  "title": "DavidsMansion",
  "price": 233,
  "address": "555 Fake Street",
  "bathrooms": 9,
  "bedrooms": 12,
  "max_guests": 11,
  "beds": 15,
  "property_type": "Mansion",
  "room_type": "Entire home/apt",
  "internet": true,
  "family": false,
  "parking": true,
  "kitchen": false,
  "description": Faker::Lorem.paragraph(2),
  "cancellation": "Moderate",
  "image": File.open('app/assets/images/houses/002.jpeg')
  })

Home.create({"host_id": 2,
  "lat": 51.11,
  "lng": -77.23,
  "title": "Lucky House",
  "price": 125,
  "address": "888 Lucky Street",
  "bathrooms": 2.5,
  "bedrooms": 4,
  "max_guests": 9,
  "beds": 6,
  "property_type": "Apartment Building",
  "room_type": "Entire home/apt",
  "internet": true,
  "family": true,
  "parking": false,
  "kitchen": true,
  "description": Faker::Lorem.paragraph(2),
  "cancellation": "Strict",
  "image": File.open('app/assets/images/houses/003.jpeg')
  })

Home.create({"host_id": 2,
  "lat": 55.11,
  "lng": -69.67,
  "title": "Cheap Room",
  "price": 15,
  "address": "125 Apt Terrace",
  "bathrooms": 1,
  "bedrooms": 1,
  "max_guests": 1,
  "beds": 1,
  "property_type": "RV",
  "room_type": "Private Room",
  "internet": false,
  "family": false,
  "parking": false,
  "kitchen": false,
  "description": Faker::Lorem.paragraph(2),
  "cancellation": "Flexible",
  "image": File.open('app/assets/images/houses/004.jpeg')
  })

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/flowers-garden-house-165884.jpeg"
})

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/wood-landscape-summer-161041.jpeg"
})

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/light-cars-coffee-286483.jpeg"
})

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/house-plant-table-271795.jpeg"
})

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/wood-landscape-summer-161041.jpeg"
})

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/wood-landscape-summer-197758.jpeg"
})

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/building-house-roof-186077.jpeg"
})

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/snow-winter-mountain-91998.jpeg"
})

Home.create({"host_id": host_id,
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
  "image": "https://s3.amazonaws.com/safehavns-dev/homes/images/000/000/004/original/sky-architecture-castle-99635.jpeg"
})
