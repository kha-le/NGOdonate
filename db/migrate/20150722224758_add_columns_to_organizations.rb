class AddColumnsToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :end_date, :date
    add_column :organizations, :customer_id, :string
  end
end
