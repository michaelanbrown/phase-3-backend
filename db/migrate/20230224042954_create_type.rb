class CreateType < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :property_type  
    end
  end
end
