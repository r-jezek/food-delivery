class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :address_id
      t.float :total_price
      t.datetime :date_ordered

      t.timestamps
    end
  end
end
