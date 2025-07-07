class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :area_code
      t.string :street
      t.integer :house_number

      t.timestamps
    end
  end
end
