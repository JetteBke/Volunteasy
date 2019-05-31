# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Cleaning the users table..."
User.destroy_all

puts "Generating New Users"

users = User.create! (
[
{email: "heino@volunteasy.com",
  password: "123456",
  first_name: "Heino",
  last_name: "Heinemann",
  city: "Koln",
  interests: "I love doing good!",
  bio: "Built a house in Tanzania last summer.",
  dob: "1991-09-18 10:07:05 +0100",
  phone: "986 7654 34987",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559050960/volunteers_er7ryk.jpg"
},
{email: "samuel@guardianangels.com",
  password: "123456",
  first_name: "Samuel",
  last_name: "Johnson",
  city: "Lisbon",
  interests: "I want to find new opportunities in my area!",
  bio: "Saved 85 turtles in Fiji over the Spring.",
  dob: "1998-08-10 15:07:05 +0100",
  phone: "456 7345 343457"
},
{email: "jon@snow.com",
  password: "123456",
  first_name: "Jon",
  last_name: "Snow",
  city: "Castle Black",
  interests: "I know nothing",
  bio: "Saved the North, is the shield that guards the realms of men.",
  dob: "1995-03-16 15:07:05 +0100",
  phone: "234 2567 456788"
},
{email: "jamie@lannister.com",
  password: "123456",
  first_name: "Jaime",
  last_name: "Lannister",
  city: "Dubrovnik",
  interests: "Nothing else matters.",
  bio: "Kingslayer. Lover of sister. Knight of the Realm.",
  dob: "1985-07-20 15:07:05 +0100",
  phone: "644 3543 234526"
},
{email: "Antoinette@gmail.com",
  password: "123456",
  first_name: "Antoinette",
  last_name: "Monnier",
  city: "Columbo",
  interests: "Surfing and drinking wine with Jette and Izzy",
  bio: "grew up in Sri Lanka, ate a lot of bananas and saved monkeys.",
  dob: "1993-05- 11:07:05 +0100",
  phone: "644 3543 234526"
},
{email: "Luis@yoga.com",
  password: "123456",
  first_name: "Luis",
  last_name: "Lannister",
  city: "Lisboa",
  interests: "Yoga and Avocados with olive oil",
  bio: "prepared vegan sandwiches for homeless people during the winter",
  dob: "1983-08-22 15:07:05 +0100",
  phone: "644 3543 234526"
},
{email: "Karine@bcg.com",
  password: "123456",
  first_name: "Karine",
  last_name: "Gazarian",
  city: "Paris",
  interests: "Playing pingpong while smoking a cigarette",
  bio: "works as an consultant at BCG and feed pigeons on the streets sometimes",
  dob: "1995-07-20 15:07:05 +0100",
  phone: "644 3543 234526"
},
{email: "Jackattack@lannister.com",
  password: "123456",
  first_name: "Jack",
  last_name: "Erins",
  city: "Stockholm",
  interests: "Tattoos.",
  bio: "Tattoo artist for life. Tattooed homeless people for free.",
  dob: "1985-03-03 15:07:05 +0100",
  phone: "644 3543 234526"
}
])


puts "Generating Organizations"

organizations = Organization.create! (
  [
    {
      name: "Heino for the World",
      address: "Everywhere people want to do good!",
      category: "Community",
      url: "heino@heinemann.com",
      description: "Founded by our fearless leader, Heino Heinemann - the brainchild of the revolutionary Team at Volunteasy.",
      photo_url: "",
      user_id: "1"
    },
    {
      name: "Guardian Angels",
      address: "7th Level of Heaven",
      category: "Animals",
      url: "google.com",
      description: "Heavenly bodies coming together to save the world",
      photo_url: "",
      user_id: "2"
    },
    {
      name: "Tattoos for all",
      address: "Rua de Arroios 25, Lisbon",
      category: "Community",
      url: "tattooes-for-all.com",
      description: "We are tattooing everybody for free as long as they are homeless and in Lisbon.",
      photo_url: "",
      user_id: "8"
    },
    {
      name: "Save the Oceans",
      address: "R Gomes Freire 91",
      category: "Environment",
      url: "save-the-oceans.com",
      description: "SAVE THE OCEANS YOU MOTHERFUCKERS",
      photo_url: "",
      user_id: "5"
    }])

#other categories are "Animals" and "Environment"

puts "Creating Events"



events = Event.create! (
  [
    {
      start_at: "2019-06-28 10:07:05 +0100",
      ends_at: "2019-06-29 18:07:05 +0100",
      address: "Rua do Conde de Redondo 91B, 1150-103 Lisboa",
      task: "Serve the population - clean the park.",
      title: "Lets save the Park!",
      spots: 10,
      category: "Environment",
      description: "The Park of the People is in danger. The powers that be are considering taking it away and replacing it with a shopping mall! Join us in a community effort to clean up the park, and make a petition to the government to make it a national monument.",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559050960/volunteers_er7ryk.jpg",
      organization_id: "1",
      latitude: 38.726080,
      longitude: -9.145480
    },
    {
      start_at: "2019-05-30 9:00:05 +0100",
      ends_at: "2019-05-31 18:07:05 +0100",
      address: "Largo do Carmo, 1200-092 Lisboa, Portugal",
      task: "Gather supplies and training to break into the Zoo",
      title: "Operation Simba!",
      spots: 20,
      category: "Animal",
      description: "Covert operation to break into the travelling circus and rescue all the circus animals. Top Secret.",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559050960/volunteers_er7ryk.jpg",
      organization_id: "2",
      latitude: 38.711960,
      longitude: -9.140690
    },
    {
      start_at: "2019-07-03 9:00:05 +0100",
      ends_at: "2019-07-06 18:07:05 +0100",
      address: "Panteao Nacional Campo de Santa Clara, Lisbon 1100-471, Portugal",
      task: "Prepare vegan sandwiches",
      title: "Food for all",
      spots: 6,
      category: "Community",
      description: "Bread - Tomato - lettuce - cucumber - avocado - hummus - bread. that's how you make a good vegan sandwich!",
      photo: "https://cdn77-s3.lazycatkitchen.com/wp-content/uploads/2015/09/vegan-sandwich-lunch-800x693.jpg",
      organization_id: "1",
      latitude: 38.715530,
      longitude: -9.125190
    },
    {
      start_at: "2019-06-28 9:00:05 +0100",
      ends_at: "2019-06-30 18:07:05 +0100",
      address: "Rua de Santa Cruz do Castelo, 1100-129 Lisboa, Portugal",
      task: "Habitat for Humanity - for Castles",
      title: "Rebuilding the Castle!",
      spots: 20,
      category: "Community",
      description: "The Castle is in desperate need of rebuilding. No one has thought to put the roof back up in over a hundred years. Let's get this done, team.",
      photo: "https://upload.wikimedia.org/wikipedia/commons/c/cf/LisbonCastle.jpg",
      organization_id: "2",
      latitude: 38.712830,
      longitude: -9.132850
    },
    {
      start_at: "2019-08-15 9:00:05 +0100",
      ends_at: "2019-08-17 18:07:05 +0100",
      address: "Rua do Ouro, 1150-060 Lisboa, Portugal",
      task: "Discover new species in Portugal",
      title: "EcoDiversity Run",
      spots: 15,
      category: "Animal",
      description: "The biological diversity of species in Portugal has detiriorated significantly in recent years. Come together as a community to help us rediscover our lost friends.",
      photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkpk5HWP2a7WlWZYf92BKCChVzlm8OMRplmUFH71oSShlU7tU1lw",
      organization_id: "2",
      latitude: 38.710781,
      longitude: -9.138610
    },
    {
      id: 6,
      start_at: "2019-08-15 9:00:05 +0100",
     ends_at: "2019-08-17 18:07:05 +0100",
     address: "Rua Actor Taborda 55, Lisboa",
     task: "Help izi stay high-key lit",
     title: "izi’s event",
     spots: 15,
     category: "Animal",
     description: "Peep this, fam, izi needs to stay lit.",
     photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559210674/IZI_pic_wukkfe.jpg",
     organization_id: 1,
     latitude: 38.7316884,
     longitude: -9.1440666}
  ]
  )


puts "Creating Bookings"

bookings = Booking.create! (
  [
    {
      status: "Confirmed",
      event_id: "1",
      user_id: "3"
    },
    {
      status: "Pending",
      event_id: "2",
      user_id: "4"
    },
    {
      status: "Pending",
      event_id: "2",
      user_id: "6"
    },
    {
      status: "Pending",
      event_id: "2",
      user_id: "8"
    },
    {
      status: "Confirmed",
      event_id: "3",
      user_id: "6"
    },
    {
      status: "Completed",
      event_id: "4",
      user_id: "5"
    },
    {
      status: "Pending",
      event_id: "3",
      user_id: "6"
    },
    {
      status: "Confirmed",
      event_id: "4",
      user_id: "4"
    },
    {
      status: "Cancelled",
      event_id: "2",
      user_id: "4"
    },
    {
      status: "Pending",
      event_id: "5",
      user_id: "6"
    }
  ])

puts "Creating reviews"

reviews = Review.create! ([
    {
      rating: 5,
      content: "This trip was a lot of fun. I made some great new friends that I had some fun times with and went on adventures with. I met a lot of people that I enjoyed my time with everyone in the group. The support was nice and the rooms were nice. The home stay was an amazing experience for me because it taught me to be thankful for everything I have back at my home and to not take anything for granted.",
      booking_id: "1"
    },
    {
      rating: 4,
      content: "Definitely a trip to remember. Going into this trip I didn’t really know wht to expect in terms of how much we were really able to do (in terms of hands-on in surgery) and homestays. All the vets were very helpful in explaining and being patient with us. It was an amazing experience as well as we got a chance to experience the culture first hand. ",
      booking_id: "1"
    },
    {
      rating: 4,
      content: "Overall super amazing trip! If you’re social and like to make friends then this trip is good for you. It was very hands on and educational. Within the matter of 6 clinic days I learned more than I ever would in Canada.",
      booking_id: "1"
    },
    {
      rating: 4,
      content: "It’s amazing! Teaching English or medical in the morning then orphanages at night. The weekends you have free and the house managers great about helping you book trips. Amazing experience.",
      booking_id: "1"
    },
    {
     rating: 4,
     content: "Overall super amazing trip! If you’re social and like to make friends then this trip is good for you. It was very hands on and educational. Within the matter of 6 clinic days I learned more than I ever would in Canada.",
     booking_id: "1"
   }
 ])



#what are the other statuses?

# Not including events yet, because there are dependencies there based on the "Status" of the booking. Need to think through those more first.
# puts "Creating Reviews"

# reviews = Review.create! (
#   [
#     {
#       rating: 5,
#       content: "Had a lovely time frolicking in the park AND cleaning it at the same time. Made friends and will definitely be back for more!",
#       booking_id: "1"
#     },
#     {
#       rating: 2,
#       content: "Next time - we should bring a ninja",
#       booking_id: "2"
#     }
#   ])
puts "Done!"
