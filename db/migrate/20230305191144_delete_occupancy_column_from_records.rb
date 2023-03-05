class DeleteOccupancyColumnFromRecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :records, :occupancy
  end
end
