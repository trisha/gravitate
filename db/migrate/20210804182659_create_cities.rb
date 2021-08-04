class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :lat
      t.string :long
      t.string :start_date
      t.string :end_date
      t.timestamps
    end
  end
end
