class AddDonorsAndCreditCardsAndOrganizations < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name

      t.timestamps
    end

    create_table :organizations do |t|
      t.string :name

      t.timestamps
    end

    create_table :credit_cards do |t|
      t.bigint :card_number
      t.datetime :expiration_date
      t.integer :security_code
      t.string :billing_address
      t.integer :donor_id

      t.timestamps
    end

    create_table :donors_organization do |t|
      t.integer :donor_id
      t.integer :organization_id
    end
  end
end
