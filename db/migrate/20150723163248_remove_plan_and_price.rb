class RemovePlanAndPrice < ActiveRecord::Migration
  def change
    remove_column :organizations, :plan
    remove_column :organizations, :price
  end
end
