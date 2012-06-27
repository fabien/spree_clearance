class AddMarkedForClearanceAtToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :marked_for_clearance_at, :timestamp
  end
end
