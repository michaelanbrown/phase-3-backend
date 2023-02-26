class RenamePropertyTypeColumnInRecord < ActiveRecord::Migration[6.1]
  def change
    change_column :records, :property_id, :string
    rename_column :records, :property_id, :property_address
  end
end
