class CreateUserCities < ActiveRecord::Migration[6.1]
  def change
    create_table :user_cities do |t|
      t.references :user, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
