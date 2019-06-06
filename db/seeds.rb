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
  city: "Lisboa",
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
  city: "Lisboa",
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
{email: "kimayalocke12@gmail.com",
  password: "123456",
  first_name: "Kimaya",
  last_name: "Locke",
  city: "Lisboa",
  interests: "Trees and forests are my favourite things.",
  bio: "Studied forestry in Canada and helped planting trees in the black forest in Germany!",
  dob: "1985-07-20 15:07:05 +0100",
  phone: "644 1203 439202",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648686/Screen_Shot_2019-06-04_at_12.44.30_PM_etnh4n.png"
},
{email: "Antoinette@gmail.com",
  password: "123456",
  first_name: "Antoinette Clementine",
  last_name: "Monnier",
  city: "Lisboa",
  interests: "Surfing and drinking wine with Jette and Izzy",
  bio: "I worked in design for a couple of years but want to change careers towards sustainability",
  dob: "1993-05-23 11:07:05 +0100",
  phone: "644 3543 234526",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648319/Screen_Shot_2019-06-04_at_12.36.56_PM_ie47uc.png"
},
{email: "shreedas@yoga.com",
  password: "123456",
  first_name: "Shree",
  last_name: "Das",
  city: "Lisboa",
  interests: "Yoga and Avocados",
  bio: "I prepared vegan sandwiches for homeless people during the winter in Lisbon.",
  dob: "1983-08-22 15:07:05 +0100",
  phone: "351 3543 98446",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648784/Screen_Shot_2019-06-04_at_12.46.16_PM_znlwqq.png"
},
{email: "karine.sanchez@bcg.com",
  password: "123456",
  first_name: "Karine",
  last_name: "Sanchez",
  city: "Lisboa",
  interests: "In love with the ocean!",
  bio: "I work as an consultant at BCG and feed pigeons on the streets sometimes",
  dob: "1995-07-20 15:07:05 +0100",
  phone: "475 8426 234526",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648321/Screen_Shot_2019-06-04_at_12.36.10_PM_rndgey.png"
},
{email: "Pedro.silva@gmail.com",
  password: "123456",
  first_name: "Pedro",
  last_name: "Silva",
  city: "Lisboa",
  interests: "All things that are beautiful",
  bio: "Studied biological engineering and psychology and cut hair of homeless people sometimes.",
  dob: "1985-03-03 15:07:05 +0100",
  phone: "132 3543 97688",
  photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559648315/Screen_Shot_2019-06-04_at_12.37.12_PM_eeiif1.png"
}
])


puts "Generating Organizations"

organizations = Organization.create! (
  [
    {
      name: "Heino for the World",
      address: "23 Praca do Principe Real, Lisbon",
      category: "Community",
      url: "www.heino-for-the-world.com",
      description: "Our small organization 'Heino for the World' tries to bring a better life to people by organizing events where we give free haircuts, prepare food or collect clothing for the homeless people of Lisbon.",
      photo_url: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574602/tutor_gjfyrc.jpg",
      user_id: "1"
    },
    {
      name: "Guardian Angels",
      address: "R. De Dona Estefânia 104, 1150-176 Lisboa",
      category: "Animals",
      url: "www.guardianangels.com",
      description: "At Guardian Angels we care about animals more than everything else. We support vegan food shops and restaurants and we try to help abandoned pets to find new homes.",
      photo_url: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574602/tutor_gjfyrc.jpg",
      user_id: "2"
    },
    {
      name: "Plastic Attack",
      address: "Rua de Arroios 25, Lisbon",
      category: "Environment",
      url: "www.plasticattack.com",
      description: "Our story is short but we have big plans: We want to free the world from one use plastics by spreading awareness! We organize clean ups and other events to help reducing waste.",
      photo_url: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574602/tutor_gjfyrc.jpg",
      user_id: "3"
    },
    {
      name: "Save the Oceans",
      address: "R Gomes Freire 91",
      category: "Environment",
      url: "save-the-oceans.com",
      description: "The beautiful beaches around Lisbon become more and more dirty. Our targets are too much plastic cups, careless visitors and the too few trash cans.",
      photo_url: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574602/tutor_gjfyrc.jpg",
      user_id: "7"
    }])

#other categories are "Animals" and "Environment"

puts "Creating Events"

events = Event.create! (
  [
    {
      start_at: "2019-06-28 10:00:00 +0100",
      ends_at: "2019-06-29 18:00:00 +0100",
      address: "Av. Rovisco Pais 1, 1049-001 Lisboa",
      task: "Tutor a child, one hour a week!",
      title: "Tutor a Child",
      spots: 2,
      category: "Community",
      description: "Tutor one child, one hour a week and make a difference in their life! No prior teaching or tutoring experience is required. Training is provided online or in person in the highly effective Peak Reader curricula, and a trained site coordinator is always available during the tutoring sessions. Join Children's Literacy Center in the fight against illiteracy...One Child At a Time!",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574602/tutor_gjfyrc.jpg",
      organization_id: "1",
      latitude: 38.735310,
      longitude: -9.138330
    },
    {
      start_at: "2019-06-20 8:00:00 +0100",
      ends_at: "2019-06-20 18:00:00 +0100",
      address: "Rua da Graça 26, 1170-166 Lisboa",
      task: "Help to prepare sandwiches and soup for the food bank of Lisboa.",
      title: "Food for the homeless",
      spots: 10,
      category: "Community",
      description: "Since two of our members are sick we look for short-term replacement to help us preparing food and snacks for the homeless people.",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559824930/22083ac9525cea45ffb10b1bf9746587_spy3cx.jpg",
      organization_id: "1",
      latitude: 38.720630,
      longitude: -9.130200
    },
    {
      start_at: "2019-07-02 15:00:00 +0100",
      ends_at: "2019-07-02 22:00:00 +0100",
      address: "Largo do Carmo, 1200-092 Lisboa, Portugal",
      task: "Become a member of our Community Educators team and teach community groups about Alzheimer's and dementia.",
      title: "Speaker for Alzheimer's Association",
      spots: 3,
      category: "Community",
      description: "Interested in raising awareness? Know someone affected by the disease and want to make a difference in the future of those affected by the Alzheimer's Disease?

Become a member of our Community Educators team and teach community groups about Alzheimer's and dementia. You will become familiar with several different educational programs related to Alzheimer's Disease and then be available to make presentations to a variety of groups in our community. Curriculum, power point slides, and handouts provided for all events.
",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574650/u0HuMWcSEi_lzlwkk.webp",
      organization_id: "1",
      latitude: 38.711960,
      longitude: -9.140690
    },
    {
      start_at: "2019-07-03 9:00:05 +0100",
      ends_at: "2019-07-06 18:07:05 +0100",
      address: "R. Júlio de Andrade, 1150-122 Lisboa",
      task: "Volunteers will be run our annual Family Arts and Music Festival Event.",
      title: "Family Arts and Music Festival",
      spots: 6,
      category: "Community",
      description: "This is our annual Family Arts and Music Festival Fundraiser for the Made for More Project!! This event will help us reach our program goals,  Bring your friends, family, groups, and coworkers to help in your community! Volunteers will be running information booths, craft stations and helping out on other interactive activities.
",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559574700/Screen_Shot_2019-06-03_at_4.11.32_PM_gezlnk.png",
      organization_id: "1",
      latitude: 38.720040,
      longitude: -9.140530
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
      start_at: "2019-08-15 9:00:00 +0100",
      ends_at: "2019-08-17 18:00:00 +0100",
      address: "Rua do Ouro, 1150-060 Lisboa, Portugal",
      task: "Discover new species in Portugal",
      title: "EcoDiversity Run",
      spots: 25,
      category: "Animal",
      description: "The biological diversity of species in Portugal has detiriorated significantly in recent years. Come together as a community to help us rediscover our lost friends.",
      photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkpk5HWP2a7WlWZYf92BKCChVzlm8OMRplmUFH71oSShlU7tU1lw",
      organization_id: "2",
      latitude: 38.710781,
      longitude: -9.138610
    },
        {
      start_at: "2019-08-01 12:00:00 +0100",
      ends_at: "2019-08-04 17:00:00 +0100",
      address: "Rua da Reguiera 28, Lisboa, Portugal",
      task: "Collect trash from the streets together with other passionate helpers",
      title: "1st CleanUp Lisboa",
      spots: 8,
      category: "Environment",
      description: "Bring your reusable water bottle to keep yourself hydrated. Gloves and hemp bags will be provided for everyone to use during the cleanup. Let's get rid of the trash and fight the pollution!",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559824950/trashtag-clean-up-litter-1552318521531_gbxvpc.webp",
      organization_id: "2",
      latitude: 38.711820,
      longitude: -9.128290
    },
    {
      start_at: "2019-06-15 6:00:00 +0100",
      ends_at: "2019-06-15 18:00:00 +0100",
      address: "R. Alberto de Oliveira 11, 1700-019 Lisboa",
      task: "Bring your car and help bringing water and food to the food banks.",
      title: "Supply the food banks",
      spots: 5,
      category: "Community",
      description: "We are looking for drivers who are available to pick up donated food and deliver it to the food banks.",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559825026/download-1_exws5a.jpg",
      organization_id: "1",
      latitude: 38.751590,
      longitude: -9.145030
    },
    {
      start_at: "2019-06-15 9:00:00 +0100",
      ends_at: "2019-06-17 16:00:00 +0100",
      address: "Parque da Belavista – Marvila, 1950-000 Lisboa",
      task: "Help to plant new trees in the Park da Bela Vista",
      title: "Plant trees",
      spots: 7,
      category: "Environment",
      description: "The plants of Park da Bela Vista became less and less during the past years. Let's change it and give a nicer place for animals and humans to relax.",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559825052/Tree-Planting-Cambodia-2014-Luc-Forsyth-50-1024x683-790x527_a0mdhz.jpg",
      organization_id: "3",
      latitude: 38.748690,
      longitude: -9.120940
    },
    {
      start_at: "2019-08-15 9:00:00 +0100",
      ends_at: "2019-08-17 18:00:00 +0100",
      address: "1100-278 Lisboa",
      task: "Collect empty plastic cups and other trash while swimming.",
      title: "Clean the Tejo",
      spots: 6,
      category: "Environment",
      description: "Removing trash from the oceans is challenging, so we are looking for passionate people who want to face this challenge.",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559825089/ckxfg7g6mdqxqdvow2amwlo-hpz-karffnrjt7o-hms_osp5qx.jpg",
      organization_id: "4",
      latitude: 38.709840,
      longitude: -9.128620
    },]
  )


puts "Creating Bookings"

bookings = Booking.create! (
  [
    {
      status: "Confirmed",
      event_id: "6",
      user_id: "1"
    },
    {
      status: "Rejected",
      event_id: "7",
      user_id: "1"
    },
    {
      status: "Completed",
      event_id: "9",
      user_id: "1"
    },
    {
      status: "Completed",
      event_id: "1",
      user_id: "8"
    },
    {
      status: "Completed",
      event_id: "1",
      user_id: "1"
    },
    {
      status: "Completed",
      event_id: "1",
      user_id: "7"
    },
    {
      status: "Completed",
      event_id: "1",
      user_id: "6"
    },
    {
      status: "Completed",
      event_id: "1",
      user_id: "5"
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
      status: "Pending",
      event_id: "2",
      user_id: "8"
    },
    {
      status: "Pending",
      event_id: "2",
      user_id: "6"
    },
    {
      status: "Confirmed",
      event_id: "2",
      user_id: "7"
    },
    {
    status: "Confirmed",
    event_id: "2",
    user_id: "5"
    }
  ])

puts "Creating reviews"

reviews = Review.create! ([
    {
      rating: 5,
      content: "This trip was a lot of fun. I made some great new friends that I had some fun times with and went on adventures with. I met a lot of people that I enjoyed my time with everyone in the group. The support was nice and the rooms were nice. The home stay was an amazing experience for me because it taught me to be thankful for everything I have back at my home and to not take anything for granted.",
      booking_id: "5"
    },
    {
      rating: 4,
      content: "Definitely a trip to remember. Going into this trip I didn’t really know wht to expect in terms of how much we were really able to do (in terms of hands-on in surgery) and homestays. All the vets were very helpful in explaining and being patient with us. It was an amazing experience as well as we got a chance to experience the culture first hand. ",
      booking_id: "6"
    },
    {
      rating: 5,
      content: "Overall super amazing trip! If you’re social and like to make friends then this trip is good for you. It was very hands on and educational. Within the matter of 6 clinic days I learned more than I ever would in Canada.",
      booking_id: "7"
    },
    {
      rating: 4,
      content: "It’s amazing! Teaching English or medical in the morning then orphanages at night. The weekends you have free and the house managers great about helping you book trips. Amazing experience.",
      booking_id: "8"
    },
    {
     rating: 5,
     content: "Overall super amazing trip! If you’re social and like to make friends then this trip is good for you. It was very hands on and educational. Within the matter of 6 clinic days I learned more than I ever would in Canada.",
     booking_id: "9"
   }
 ])

puts "Done!"
