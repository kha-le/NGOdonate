class AddChargesTable < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :amount
    end
  end
end
