class RenameStreetAddressColumnInProperty < ActiveRecord::Migration[6.1]
  def change
    rename_column :properties, :stress_address, :street_address
  end
end
