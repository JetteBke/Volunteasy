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
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559300042/IMG_9744_qelq9e.jpg"
},
{email: "samuel@guardianangels.com",
  password: "123456",
  first_name: "Samuel",
  last_name: "Johnson",
  city: "Lisbon",
  interests: "I want to find new opportunities in my area!",
  bio: "Saved 85 turtles in Fiji over the Spring.",
  dob: "1998-08-10 15:07:05 +0100",
  phone: "456 7345 343457",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559300047/IMG_9742_bgqzm3.jpg"
},
{email: "alexkawer@snow.com",
  password: "123456",
  first_name: "Alex",
  last_name: "Kawer",
  city: "Lisboa",
  interests: "Love to paint, cook, and swim!",
  bio: "I am a biomedical engineer who studied at UIUC",
  dob: "1995-03-16 15:07:05 +0100",
  phone: "234 2567 456788",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648314/Screen_Shot_2019-06-04_at_12.37.51_PM_x6mtqp.png"
},
{email: "kimayalocke12@lannister.com",
  password: "123456",
  first_name: "Kimaya",
  last_name: "Locke",
  city: "Dubrovnik",
  interests: "Nothing else matters.",
  bio: "Kingslayer. Lover of sister. Knight of the Realm.",
  dob: "1985-07-20 15:07:05 +0100",
  phone: "644 3543 234526",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648686/Screen_Shot_2019-06-04_at_12.44.30_PM_etnh4n.png"
},
{email: "Antoinette@gmail.com",
  password: "123456",
  first_name: "Clementine",
  last_name: "Monnier",
  city: "Columbo",
  interests: "Surfing and drinking wine with Jette and Izzy",
  bio: "grew up in Sri Lanka, ate a lot of bananas and saved monkeys.",
  dob: "1993-05-23 11:07:05 +0100",
  phone: "644 3543 234526"
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648319/Screen_Shot_2019-06-04_at_12.36.56_PM_ie47uc.png"
},
{email: "shreedas@yoga.com",
  password: "123456",
  first_name: "Shree",
  last_name: "Das",
  city: "Lisboa",
  interests: "Yoga and Avocados with olive oil",
  bio: "prepared vegan sandwiches for homeless people during the winter",
  dob: "1983-08-22 15:07:05 +0100",
  phone: "644 3543 234526",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648784/Screen_Shot_2019-06-04_at_12.46.16_PM_znlwqq.png"
},
{email: "rogrigo.sanchez@bcg.com",
  password: "123456",
  first_name: "Rodrigo",
  last_name: "Sanchez",
  city: "Paris",
  interests: "Playing pingpong while smoking a cigarette",
  bio: "works as an consultant at BCG and feed pigeons on the streets sometimes",
  dob: "1995-07-20 15:07:05 +0100",
  phone: "644 3543 234526"
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648321/Screen_Shot_2019-06-04_at_12.36.10_PM_rndgey.png"
},
{email: "jamiebiondi@lannister.com",
  password: "123456",
  first_name: "Jamie",
  last_name: "Biondi",
  city: "Stockholm",
  interests: "Tattoos.",
  bio: "Tattoo artist for life. Tattooed homeless people for free.",
  dob: "1985-03-03 15:07:05 +0100",
  phone: "644 3543 234526"
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648315/Screen_Shot_2019-06-04_at_12.37.12_PM_eeiif1.png"
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
      task: "Tutor a child, one hour a week!",
      title: "Tutor a Child in Reading at Bradford Elementary",
      spots: 10,
      category: "Community",
      description: "Tutor one child, one hour a week and make a difference in their life! No prior teaching or tutoring experience is required. Training is provided online or in person in the highly effective Peak Reader curricula, and a trained site coordinator is always available during the tutoring sessions. Join Children's Literacy Center in the fight against illiteracy...One Child At a Time!",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574602/tutor_gjfyrc.jpg",
      organization_id: "1",
      latitude: 38.726080,
      longitude: -9.145480
    },
    {
      start_at: "2019-05-30 9:00:05 +0100",
      ends_at: "2019-05-31 18:07:05 +0100",
      address: "Largo do Carmo, 1200-092 Lisboa, Portugal",
      task: "Become a member of our Community Educators team and teach community groups about Alzheimer's and dementia.",
      title: "Be a Public Speaker for the Alzheimer's Association",
      spots: 20,
      category: "Community",
      description: "Interested in raising awareness? Know someone affected by the disease and want to make a difference in the future of those affected by the Alzheimer's Disease?

Become a member of our Community Educators team and teach community groups about Alzheimer's and dementia. You will become familiar with several different educational programs related to Alzheimer's Disease and then be available to make presentations to a variety of groups in our community. Curriculum, power point slides, and handouts provided for all events.
",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574650/u0HuMWcSEi_lzlwkk.webp",
      organization_id: "2",
      latitude: 38.711960,
      longitude: -9.140690
    },
    {
      start_at: "2019-07-03 9:00:05 +0100",
      ends_at: "2019-07-06 18:07:05 +0100",
      address: "Largo do Carmo, 1200-092 Lisboa, Portugal",
      task: "Volunteers will be run our annual Family Arts and Music Festival Event.",
      title: "Volunteer Event Staff Needed for Family Arts and Music Festival",
      spots: 6,
      category: "Community",
      description: "This is our annual Family Arts and Music Festival Fundraiser for the Made for More Project!! This event will help us reach our program goals,  Bring your friends, family, groups, and coworkers to help in your community! Volunteers will be running information booths, craft stations and helping out on other interactive activities.
",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574700/Screen_Shot_2019-06-03_at_4.11.32_PM_gezlnk.png",
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
      user_id: "3"
    },
    {
      status: "Pending",
      event_id: "2",
      user_id: "3"
    },
    {
      status: "Confirmed",
      event_id: "2",
      user_id: "3"
    },
    {
      status: "Cancelled",
      event_id: "3",
      user_id: "3"
    },
    {
      status: "Cancelled",
      event_id: "4",
      user_id: "3"
    },
    {
      status: "Rejected",
      event_id: "3",
      user_id: "3"
    },
    {
      status: "Rejected",
      event_id: "4",
      user_id: "3"
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
    },
    {
      status: "Completed",
      event_id: "3",
      user_id: "1"
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
