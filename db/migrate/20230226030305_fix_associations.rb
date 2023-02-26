class FixAssociations < ActiveRecord::Migration[6.1]
  def change
    change_column :properties, :property_type, :integer
    rename_column :properties, :property_type, :type_id
    change_column :records, :property_address, :integer
    rename_column :records, :property_address, :property_id
  end
end
