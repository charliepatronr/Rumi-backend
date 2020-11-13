# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SprintChore.delete_all
Chore.delete_all
Sprint.delete_all
User.delete_all
House.delete_all

houses = []
users_house_1 = []
chores_house_1 = []
users_house_2 = []
chores_house_2 = []
sprint_chores_house_1 = []
sprint_chores_house_2 = []

# 2.times do 
#     houses << House.create(name: 'Stark', address: Faker::TvShows::GameOfThrones.city, img: 'https://i.pinimg.com/originals/4a/bc/38/4abc38758eba60d6712bd86dd1542697.png' , rules: 'Winter is coming')
# end 

House.create(name: 'Stark', address: Faker::TvShows::GameOfThrones.city, img: 'https://i.pinimg.com/originals/4a/bc/38/4abc38758eba60d6712bd86dd1542697.png' , rules: 'Winter is coming')

# 3.times do 
#     users_house_1 << User.create(name: Faker::TvShows::GameOfThrones.character, admin: false, house_id: House.all.first.id, points:0, historical_points:0)
# end
users_house_1 << User.create(name: 'Charlie Patron', admin: true, house_id: House.all.first.id, points:0, historical_points:0, img: 'https://scontent.fagu3-1.fna.fbcdn.net/v/t1.0-9/103548135_10222584682983129_777906396867166518_n.jpg?_nc_cat=109&ccb=2&_nc_sid=09cbfe&_nc_ohc=HFb__HJ55NEAX_rtpAX&_nc_ht=scontent.fagu3-1.fna&oh=f8e12fec8a00f9daa7c0ff7b88f48d34&oe=5FD0E4E8', username: 'charliepatronr', password:'123', email:'charliepatronr@gmail.com')
users_house_1 << User.create(name: 'Diego G', admin: false, house_id: House.all.first.id, points:0, historical_points:0, img: 'https://scontent.fagu3-1.fna.fbcdn.net/v/t1.0-9/40452077_10156157923683702_1263405131660001280_n.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=6daLvRXH1KEAX_P8id-&_nc_ht=scontent.fagu3-1.fna&oh=b09b1f8beab289583150237b97796547&oe=5FD34502', username: 'diegog', password:'123', email: 'dgonzalezq@gmail.com')
users_house_1 << User.create(name: 'Paola Portilla', admin: false, house_id: House.all.first.id, points:0, historical_points:0, img: 'https://pbs.twimg.com/profile_images/1004141584882036736/uyn58vKg_400x400.jpg', username: 'paopao', password:'123', email:'pahola@gmail.com')




# 3.times do 
#     users_house_2 << User.create(name: Faker::TvShows::GameOfThrones.character, admin: false, house_id: House.all.sample.id, points:0, historical_points:0)
# end

# users_house_1 << User.create(name: Faker::TvShows::GameOfThrones.character, admin: true, house_id: House.all.first.id, points:0, historical_points:0)
# users_house_2 << User.create(name: Faker::TvShows::GameOfThrones.character, admin: true, house_id: House.all.last.id, points:0, historical_points:0)



chores_house_1 << Chore.create(title: 'cut grass', description: 'Mow the lawn once per week', points: 8, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'walk dog', description: 'Take Duke around the block for 30 minutes everyday', points: 5, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'water plants', description: 'Water the two orchids in the kitchen once a week during winter and twice a week when warm and dry', points: 2, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'vacuum', description: 'Kitchen and living room once per week', points: 3, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'clean bathroom', description: 'Clean toilet, sink, tub, floor and mirror', points: 8, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'take out trash', description: 'Take trash to curbside on Tuesday night (garbage truck picks it up Wednesday morning)', points: 1, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'groceries', description: 'Go to the grocery store on sunday, buy things from list on fridge', points: 8, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'clean kitchen', description: 'Deep clean the kitchen, clean fridge, stove, and dont forget the oven!', points: 8, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'laundry', description: 'Wash the towels and clothes that are in the basket in the washing room', points: 3, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: "Clean Duke's mess", description: 'Put his toys away!', points: 8, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'dust living room', description: 'Make sure common areas are tidy', points: 1, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'hallway', description: 'Sweep and mop floors', points: 2, house_id: House.all.first.id)



# chores_house_1 << Chore.create(title: 'walk dog', description: Faker::Hipster.sentence, points: 1, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'clean bathroom', description: Faker::Hipster.sentence, points: 3, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'cut grass', description: Faker::Hipster.sentence, points: 2, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'clean kitchen', description: Faker::Hipster.sentence, points: 5, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'wash dishes', description: Faker::Hipster.sentence, points: 8, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'take out trash', description: Faker::Hipster.sentence, points: 1, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'mop first floor', description: Faker::Hipster.sentence, points: 3, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'pay electric', description: Faker::Hipster.sentence, points: 2, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'pay internet', description: Faker::Hipster.sentence, points: 2, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'do laundry', description: Faker::Hipster.sentence, points: 8, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'put dishes away', description: Faker::Hipster.sentence, points: 3, house_id: House.all.first.id)
# chores_house_1 << Chore.create(title: 'water plants', description: Faker::Hipster.sentence, points: 2, house_id: House.all.first.id)


# chores_house_2 << Chore.create(title: 'walk dog', description: Faker::Hipster.sentence, points: 1, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'clean bathroom', description: Faker::Hipster.sentence, points: 3, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'cut grass', description: Faker::Hipster.sentence, points: 2, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'clean kitchen', description: Faker::Hipster.sentence, points: 5, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'wash dishes', description: Faker::Hipster.sentence, points: 8, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'take out trash', description: Faker::Hipster.sentence, points: 1, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'mop first floor', description: Faker::Hipster.sentence, points: 3, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'pay electric', description: Faker::Hipster.sentence, points: 2, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'pay internet', description: Faker::Hipster.sentence, points: 2, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'do laundry', description: Faker::Hipster.sentence, points: 8, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'put dishes away', description: Faker::Hipster.sentence, points: 3, house_id: House.all.last.id)
# chores_house_2 << Chore.create(title: 'water plants', description: Faker::Hipster.sentence, points: 2, house_id: House.all.last.id)

sprint_house_1 = []
# sprint_house_2 = []



sprint_house_1 << Sprint.create(house_id: House.all.first.id, begin_date: Faker::Date.between(from: '2020-10-01', to: '2020-10-25'), completion_status: false, active: true, approval: true)
# sprint_house_2 << Sprint.create(house_id: House.all.last.id, begin_date: Faker::Date.between(from: '2020-10-01', to: '2020-10-25'), completion_status: false, active: true, approval:true)

chores_house_1.each do |chore|
    sprint_chores_house_1 << SprintChore.create(sprint_id: sprint_house_1[0].id, chore_id: chore.id, completion_status: false, user_id: users_house_1.sample.id )
end


# chores_house_2.each do |chore|
#     sprint_chores_house_2 << SprintChore.create(sprint_id: sprint_house_2[0].id, chore_id: chore.id, completion_status: false, user_id: users_house_2.sample.id )
# end

