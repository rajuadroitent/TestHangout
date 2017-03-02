class CreateLinkedInAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :linked_in_accounts do |t|
      t.string :linkedin_id
      t.string :first_name
      t.string :last_name
      t.string :location

      t.timestamps
    end
  end
end
