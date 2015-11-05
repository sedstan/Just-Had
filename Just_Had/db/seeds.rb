§User.destroy_all

u1 = User.create!(email: "larry@larry.com", password: "password", username: "larlar")
u2 = User.create!(email: "mike@mike.com", password: "password", username:"MandM")
u3 = User.create!(email:"john@john.com", password: "password", username: "johhnyboy")
u4 = User.create!(email:"ashley@ashley.com", password: "password", username: "lilash")
u5 = User.create!(email:"jasmine@jasmine.com", password: "password", username: "minniej")
u6 = User.create!(email:"roy@roy.com", password: "password", username: "royalty")
u7 = User.create!(email:"sed@sed.com", password: "password", username: "sedstan")
u8 = User.create!(email:"daisy@daisy.com", password: "password", username: "floweryd")

# u1.suggestions.create!(description: "", food_type: "", category: "", location: "", longitude: "", latitude: "", food_image: "")
u1.suggestions.create!(description: "Just had a great burrito at DF/Mexico!", food_type: "meal", category: "lunch", location: "Hanbury St, London E1 6QR", longitude: "", latitude: "", food_image: "")
u1.suggestions.create!(description: "Awesome curry!", food_type: "meal", category: "dinner", location: "20 City Rd, London EC1Y 2AJ", longitude: "", latitude: "", food_image: "")
u2.suggestions.create!(description: "Best latte! at nude", food_type: "beverage", category: "breakfast", location: "26 Hanbury Street - London - E1 6QR", longitude: "", latitude: "", food_image: "")
u3.suggestions.create!(description: "Wicked Flat White! at nude esspresso", food_type: "beverage", category: "breakfast", location: "26 Hanbury Street - London - E1 6QR
", longitude: "", latitude: "", food_image: "")
u4.suggestions.create!(description: "Massive portions at The Diner!", food_type: "meal", category:"breakfast", location: "4 Horner Square London E1 6EW", longitude: "", latitude: "", food_image: "")
u5.suggestions.create!(description: "I just had a refreshing LIT at THE BIG CHILL", food_type: "beverage", category: "lunch", location: "Dray Walk, Brick Ln, London E1 6QL", longitude: "", latitude: "", food_image: "")
u6.suggestions.create!(description: "Smashing kebab at Adiva!", food_type: "meal", category: "dinner", location: "43A Commercial St, London E1 6BD", longitude: "", latitude: "", food_image: "")
u7.suggestions.create!(description: "Best Irish coffee at Be at One", food_type: "beverage", category: "dinner", location: "348 Old Street, Shoreditch, London, EC1V 9NQ", longitude: "", latitude: "", food_image: "")
u8.suggestions.create!(description: "Jagos salad hit the spot!", food_type: "meal", category: "lunch", location: "68-80 Hanbury St, London E1 5JL", longitude: "", latitude: "", food_image: "")


