class AddPriceToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :price, :integer
  end
end
