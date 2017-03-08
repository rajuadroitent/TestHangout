class AddFieldsToLinkedInAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :linked_in_accounts, :headline, :string
    add_column :linked_in_accounts, :industry, :string
    add_column :linked_in_accounts, :summary, :string
    add_column :linked_in_accounts, :num_connections, :string
    add_column :linked_in_accounts, :picture_url, :string
    add_column :linked_in_accounts, :distance, :integer
    add_column :linked_in_accounts, :public_profile_url, :string
  end
end
