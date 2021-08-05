# README





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