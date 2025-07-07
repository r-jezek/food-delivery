class CreateRestaurants < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.references :address, null: false, foreign_key: true
      t.time :opening_time
      t.time :closing_time
      t.string :cuisine

      t.timestamps
    end
  end
end
