class CreateRecord < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.integer :mortgage_payment
      t.integer :hoa_payment
      t.integer :property_management_payment
      t.integer :gross_income
      t.boolean :occupancy
      t.integer :property_id
      t.timestamps
    end
  end
end
