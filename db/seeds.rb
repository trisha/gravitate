# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.find_or_create_by({first_name: 'Trisha', last_name: 'Pan', 
profile_picture: 'https://media-exp1.licdn.com/dms/image/C5603AQExvwtz83SW_A/profile-displayphoto-shrink_400_400/0/1611081947490?e=1633564800&v=beta&t=VhgYoHZPvy-PYpMFTovhLrJYtyFYW95mAyG-5wcVAFs',
email: 'pan.trixia@gmail.com'})

Tag.find_or_create_by(name: 'paddleboarding')
Tag.find_or_create_by(name: 'skiing')
Tag.find_or_create_by(name: 'hiking')
Tag.find_or_create_by(name: 'dining')