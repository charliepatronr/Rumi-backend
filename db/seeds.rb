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

2.times do 
    houses << House.create(name: Faker::TvShows::GameOfThrones.house, address: Faker::TvShows::GameOfThrones.city, img: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d54a6eed-5c37-4a6c-a284-827a04891881/d72igfn-86386839-bbbb-41cc-82df-9bcf01069586.png/v1/fill/w_894,h_894,strp/stark_house_wolf___game_of_thrones_by_komankk_d72igfn-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD0xMDI0IiwicGF0aCI6IlwvZlwvZDU0YTZlZWQtNWMzNy00YTZjLWEyODQtODI3YTA0ODkxODgxXC9kNzJpZ2ZuLTg2Mzg2ODM5LWJiYmItNDFjYy04MmRmLTliY2YwMTA2OTU4Ni5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.PkE5bNVMGNkGlA2pk2QeMP-CPUuDIm8Zps7a-thYFdo', rules: 'Winter is coming')
end 

# 3.times do 
#     users_house_1 << User.create(name: Faker::TvShows::GameOfThrones.character, admin: false, house_id: House.all.first.id, points:0, historical_points:0)
# end

users_house_1 << User.create(name: 'Paola Portilla', admin: false, house_id: House.all.first.id, points:0, historical_points:0, img: 'https://previews.123rf.com/images/nikiteev/nikiteev1810/nikiteev181000057/110071440-vector-single-cartoon-illustration-the-letter-p.jpg')
users_house_1 << User.create(name: 'Diego G', admin: false, house_id: House.all.first.id, points:0, historical_points:0)
users_house_1 << User.create(name: 'Charlie Patron', admin: true, house_id: House.all.first.id, points:0, historical_points:0, img: 'https://media-exp1.licdn.com/dms/image/C5603AQGlM_n24v01bw/profile-displayphoto-shrink_200_200/0?e=1606953600&v=beta&t=y152mI6kvFtdGtdbdVKavgOO_aVAr6So8PO5wBpy4w0')




3.times do 
    users_house_2 << User.create(name: Faker::TvShows::GameOfThrones.character, admin: false, house_id: House.all.sample.id, points:0, historical_points:0)
end

# users_house_1 << User.create(name: Faker::TvShows::GameOfThrones.character, admin: true, house_id: House.all.first.id, points:0, historical_points:0)
users_house_2 << User.create(name: Faker::TvShows::GameOfThrones.character, admin: true, house_id: House.all.last.id, points:0, historical_points:0)


chores_house_1 << Chore.create(title: 'walk dog', description: Faker::Hipster.sentence, points: 1, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'clean bathroom', description: Faker::Hipster.sentence, points: 3, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'cut grass', description: Faker::Hipster.sentence, points: 2, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'clean kitchen', description: Faker::Hipster.sentence, points: 5, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'wash dishes', description: Faker::Hipster.sentence, points: 8, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'take out trash', description: Faker::Hipster.sentence, points: 1, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'mop first floor', description: Faker::Hipster.sentence, points: 3, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'pay electric', description: Faker::Hipster.sentence, points: 2, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'pay internet', description: Faker::Hipster.sentence, points: 2, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'do laundry', description: Faker::Hipster.sentence, points: 8, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'put dishes away', description: Faker::Hipster.sentence, points: 3, house_id: House.all.first.id)
chores_house_1 << Chore.create(title: 'water plants', description: Faker::Hipster.sentence, points: 2, house_id: House.all.first.id)


chores_house_2 << Chore.create(title: 'walk dog', description: Faker::Hipster.sentence, points: 1, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'clean bathroom', description: Faker::Hipster.sentence, points: 3, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'cut grass', description: Faker::Hipster.sentence, points: 2, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'clean kitchen', description: Faker::Hipster.sentence, points: 5, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'wash dishes', description: Faker::Hipster.sentence, points: 8, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'take out trash', description: Faker::Hipster.sentence, points: 1, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'mop first floor', description: Faker::Hipster.sentence, points: 3, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'pay electric', description: Faker::Hipster.sentence, points: 2, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'pay internet', description: Faker::Hipster.sentence, points: 2, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'do laundry', description: Faker::Hipster.sentence, points: 8, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'put dishes away', description: Faker::Hipster.sentence, points: 3, house_id: House.all.last.id)
chores_house_2 << Chore.create(title: 'water plants', description: Faker::Hipster.sentence, points: 2, house_id: House.all.last.id)

sprint_house_1 = []
sprint_house_2 = []



sprint_house_1 << Sprint.create(house_id: House.all.first.id, begin_date: Faker::Date.between(from: '2020-10-01', to: '2020-10-25'), completion_status: false, active: true, approval: true)
sprint_house_2 << Sprint.create(house_id: House.all.last.id, begin_date: Faker::Date.between(from: '2020-10-01', to: '2020-10-25'), completion_status: false, active: true, approval:true)

chores_house_1.each do |chore|
    sprint_chores_house_1 << SprintChore.create(sprint_id: sprint_house_1[0].id, chore_id: chore.id, completion_status: false, user_id: users_house_1.sample.id )
end


chores_house_2.each do |chore|
    sprint_chores_house_2 << SprintChore.create(sprint_id: sprint_house_2[0].id, chore_id: chore.id, completion_status: false, user_id: users_house_2.sample.id )
end

