class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :profile_picture
      t.string :pronouns
      t.string :interested_in
      t.string :birthday
      t.string :linked_url
      t.string :instagram_url
      t.string :twitter_url
      t.string :other_url
      t.string :join_date 
      t.timestamps
    end
  end
end
