class AddPlanToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :plan, :string
  end
end
