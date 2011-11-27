class AddMarkedForClearanceAtToProducts < ActiveRecord::Migration
  def change
    add_column :products, :marked_for_clearance_at, :timestamp
  end
end
