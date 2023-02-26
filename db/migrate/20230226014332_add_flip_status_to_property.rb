class AddFlipStatusToProperty < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :flip_status, :string
  end
end
