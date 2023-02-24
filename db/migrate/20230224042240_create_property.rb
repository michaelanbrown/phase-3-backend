class CreateProperty < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :stress_address
      t.string :city
      t.string :state
      t.integer :purchase_price
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :square_feet
      t.integer :garage_spaces
      t.string :link
      t.integer :type_id
      t.timestamps
    end
  end
end
