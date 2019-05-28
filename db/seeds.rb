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
  phone: "986 7654 34987"
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
    }])

#other categories are "Animals" and "Environment"

puts "Creating Events"



events = Event.create! (
  [
    {
      start_at: "2019-06-28 10:07:05 +0100",
      ends_at: "2019-06-29 18:07:05 +0100",
      address: "Park of the People",
      task: "Serve the population - clean the park.",
      title: "Lets save the Park!",
      spots: 10,
      category: "Environment",
      description: "The Park of the People is in danger. The powers that be are considering taking it away and replacing it with a shopping mall! Join us in a community effort to clean up the park, and make a petition to the government to make it a national monument.",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559050960/volunteers_er7ryk.jpg",
      organization_id: "1"
    },
    {
      start_at: "2019-05-30 9:00:05 +0100",
      ends_at: "2019-05-31 18:07:05 +0100",
      address: "The Circus Zoo",
      task: "Gather supplies and training to break into the Zoo",
      title: "Operation Simba!",
      spots: 20,
      category: "Animal",
      description: "Covert operation to break into the travelling circus and rescue all the circus animals. Top Secret.",
      photo: "https://res.cloudinary.com/dj1bs7vyp/image/upload/v1559050960/volunteers_er7ryk.jpg",
      organization_id: "2"
    }
  ])


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
