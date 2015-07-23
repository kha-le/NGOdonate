class AddColumnOrganizationIdToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :organization_id, :integer
  end
end
