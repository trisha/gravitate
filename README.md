# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)
    
* Deployment instructions

* ...


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