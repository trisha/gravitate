# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.find_or_create_by({first_name: 'Horatio', last_name: 'Thomas', 
profile_picture: 'https://media-exp1.licdn.com/dms/image/C5103AQHkWDfkgIdIww/profile-displayphoto-shrink_400_400/0/1516545880427?e=1633564800&v=beta&t=oiLHtWYemoTeHSf1UKnx6k0OLOpT9a9I-7ypETI616c',
city: 'Miami',
email: 'thomas@gmail.com'})
user1.tag_list = "hacking, android, photography"
user1.save

user2 = User.find_or_create_by({first_name: 'Trisha', last_name: 'Pan', 
profile_picture: 'https://media-exp1.licdn.com/dms/image/C5603AQExvwtz83SW_A/profile-displayphoto-shrink_400_400/0/1611081947490?e=1633564800&v=beta&t=VhgYoHZPvy-PYpMFTovhLrJYtyFYW95mAyG-5wcVAFs',
city: 'Miami',
email: 'trisha@gmail.com'})
user2.tag_list = "hacking, roommates, hiking, skiing"
user2.save

user3 = User.find_or_create_by({first_name: 'Alan', last_name: 'Haikal', 
profile_picture: 'https://media-exp1.licdn.com/dms/image/C4D03AQERAmSDDssa4A/profile-displayphoto-shrink_400_400/0/1517054490043?e=1633564800&v=beta&t=8WBGVlFKtMCdNRXGrzXEuWFmZxCFBTdcKFpNFsTboi4',
city: 'Miami',
email: 'alan@gmail.com'})
user3.tag_list = "hacking, birdwatching, piloting, roommates"
user3.save

user4 = User.find_or_create_by({first_name: 'Jared', last_name: 'Gold', 
profile_picture: 'https://ca.slack-edge.com/T029RNFMX9T-U029UV6HZTM-1f15df5139b1-512',
city: 'Miami',
email: 'jared@gmail.com'})
user4.tag_list = "hacking, roommates"
user4.save

user5 = User.find_or_create_by({first_name: 'Patti', last_name: 'Gil', 
profile_picture: 'https://ca.slack-edge.com/T029RNFMX9T-U029UQQDCH0-7b74599b04c4-512',
city: 'Miami',
email: 'patti@gmail.com'})
user5.tag_list = "hacking, design"
user5.save

user6 = User.find_or_create_by({first_name: 'Yari', last_name: 'V', 
profile_picture: 'https://ca.slack-edge.com/T029RNFMX9T-U029RR8J0J1-b3e0184666ef-512',
city: 'Miami',
email: 'yari@gmail.com'})
user6.tag_list = "hacking, design, roommates"
user6.save

Tag.find_or_create_by(name: 'paddleboarding')
Tag.find_or_create_by(name: 'skiing')
Tag.find_or_create_by(name: 'hiking')
Tag.find_or_create_by(name: 'dining')
Tag.find_or_create_by(name: 'roommates')
Tag.find_or_create_by(name: 'groupon')
Tag.find_or_create_by(name: 'rideshare')