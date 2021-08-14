# README

'Gravitate' is Tinder meets Meetup, but for travelers. Find other travelers in the city you're in to do activities with, and add tags or 'passions' to your profile to discover new friends. 


Live backend: 
http://gravitate.herokuapp.com/api/users


http://gravitate.herokuapp.com/api/users/3 to view/edit a specific user


http://gravitate.herokuapp.com/api/cities/miami to view the most popular tags by city


Hacker house: https://www.miamihackweek.com/ramp-house


Notion document: https://www.notion.so/Gravitate-app-overview-f3e51f9091d347beaa928ee6d86a092f

Figma wireframes: https://www.figma.com/file/YflcdpdJa3RtiBS9mOZ1d5/Gravitate?node-id=10%3A505


SQL Content Diagrams: https://app.genmymodel.com/api/dictionary/projects/_ljb8APR8EeutFtUJnEE8kQ

## To install, run the below commands in your terminal while you're in the project folder

> Git clone

> `cd [folderName]` to the project folder 

> Run the command to download Ruby gems

> Run `rails server` to start the Rails app.

> Navigate to localhost:3000 if it doesn't do so already

> Run `exit` or `exit` to quit or force quit the Rails app.


To POST or PUT to a user (adding new tags to a user will also create a new tag):
![Endpoints for editing user](/screenshots/edit_user.png)
^ Where all field names are the same as in the db/migrate/schema.rb for User, except 'tag_list' takes one string with tags separated by commas and spaces.


/db/migrate/schema.rb will list all available data fields
![User schema with names of available fields](/screenshots/user_schema.png)


## Gems used:
https://github.com/mbleigh/acts-as-taggable-on





# Trisha's Ruby on Rails and Heroku Deploy Notes


## Heroku


### To push any updates to the code: 


`git add .`


`git commit -m "Add message"


`git push heroku main`


`git push`


### To clear (which is different from dropping) the postgreSQL table and to reseed it:


`heroku run rails console` to enter Rails console 


`User.destroy_all` and same for Tag


`User.count` to confirm that the count is 0


`exit` to exit rails console


`heroku run rails db:seed`


## How to download Ruby on Rails

[Download rvm](https://rvm.io/rvm/install) if you don't have it already (I followed the instructions under 'Basic Install')

`rvm list known`


`rvm install 3.0.2` (replace version with most recent version)


`gem`


`rails`


`gem install rails`


`rails`


`cd [Folder you want to create your project in]`


`rails new gravitate --api -d=postgresql` to create a folder called 'gravitate' that's just an API, that uses a postgreSQL database


`cd gravitate`


`bin/rails db:migrate`


`rails db:setup`


`rails server` to start app, then go to localhost:3000


Adding gems:


- Add to 'Gemfile' file, you can also add engines (which are more powerful gems but that also have their own tables)


- Run `bundle` in terminal to download 


`rails db:migrate` to migrate the engine databases I just copied over



To create a SQL model:
`rails generate model user` to create a model named user, plus the table for it


To create a join table:
`rails generate model user_city user:reference city:reference`



`rails db:migrate` to run migration of models/tables into SQL


create new data in db > seeds.rb


Afterward, run `rails db:seed`


Afterward, go to terminal and type `rails console` and within there type `User.count` and `User.last` or `User.last.tags`. Then, update user model (user.rb) to include 'acts_as_taggable_on :tags' from the documentation. Afterward, within rails console can also type `reload!` if you've made changes to code and want to refresh. @user = User.last, Tag.all, Tag.all.pluck :name (to give just the names)


rails console commands:
`!` at the end overrides validations
`a=Tag.find 5` sets a to the Tag with the id 5
`a=_` the _ shortcut refers to the previous recent thing that was returned




`rails generate migration add_city_to_users` to create a new migration file to update the users table 

Update the migration file:
class AddCityToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :city, :string
  end
end




`rails db:migrate`



Whenever you add a gem, you have to run `bundle` in the terminal afterward 



`git push heroku main` to deploy updates to heroku 



<!-- `rails db:drop`
`rails db:create`
`rails db:migrate`
`rails db:seed` -->





`rails server` to run app


`rails console` to run commands
`exit` or `exit!` to either exit or force exit out of console




Special thanks to Horatio Thomas and Alan Haikal for being my engineering teammates on this hackathon project! Miami Hack Week, Aug 1-8, 2021.