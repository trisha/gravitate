# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.find_or_create_by({first_name: 'Horatio', last_name: 'Thomas', 
profile_picture: 'https://media-exp1.licdn.com/dms/image/C5103AQHkWDfkgIdIww/profile-displayphoto-shrink_400_400/0/1516545880427?e=1633564800&v=beta&t=oiLHtWYemoTeHSf1UKnx6k0OLOpT9a9I-7ypETI616c',
city: 'Miami',
email: 'thomas@gmail.com',
tags: ['hacking', 'iOS engineering', 'traveling']})

user = User.find_or_create_by({first_name: 'Trisha', last_name: 'Pan', 
profile_picture: 'https://media-exp1.licdn.com/dms/image/C5603AQExvwtz83SW_A/profile-displayphoto-shrink_400_400/0/1611081947490?e=1633564800&v=beta&t=VhgYoHZPvy-PYpMFTovhLrJYtyFYW95mAyG-5wcVAFs',
city: 'Miami',
email: 'trisha@gmail.com',
tags: ['hacking', 'skiing', 'roommates', 'hiking']})

user = User.find_or_create_by({first_name: 'Alan', last_name: 'Haikal', 
profile_picture: 'https://media-exp1.licdn.com/dms/image/C4D03AQERAmSDDssa4A/profile-displayphoto-shrink_400_400/0/1517054490043?e=1633564800&v=beta&t=8WBGVlFKtMCdNRXGrzXEuWFmZxCFBTdcKFpNFsTboi4',
city: 'Miami',
email: 'alan@gmail.com',
tags: ['hacking', 'piloting', 'gaming', 'cooking', 'birdwatching']})

Tag.find_or_create_by(name: 'paddleboarding')
Tag.find_or_create_by(name: 'skiing')
Tag.find_or_create_by(name: 'hiking')
Tag.find_or_create_by(name: 'dining')
Tag.find_or_create_by(name: 'roommates')
Tag.find_or_create_by(name: 'groupon')
Tag.find_or_create_by(name: 'rideshare')