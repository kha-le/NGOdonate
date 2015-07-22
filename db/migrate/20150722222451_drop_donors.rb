class DropDonors < ActiveRecord::Migration
  def change
    drop_table :donors
    drop_table :donors_organization
    rename_column :credit_cards, :donor_id, :user_id

    create_table :organizations_users do |t|
      t.integer :organization_id
      t.integer :user_id
    end
  end
end
