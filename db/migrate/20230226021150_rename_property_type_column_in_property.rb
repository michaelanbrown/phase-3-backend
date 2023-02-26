class RenamePropertyTypeColumnInProperty < ActiveRecord::Migration[6.1]
  def change
    change_column :properties, :type_id, :string
    rename_column :properties, :type_id, :property_type
  end
end
