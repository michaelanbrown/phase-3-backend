class DeleteBedAndBathColumnsFromProperties < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :bedrooms
    remove_column :properties, :bathrooms
  end
end
