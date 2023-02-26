class AddIndexToPropertiesAndRecords < ActiveRecord::Migration[6.1]
  def change
    add_index :properties, :type_id, name: "index_properties_on_type"
    add_index :records, :property_id, name: "index_records_on_property"
  end
end
