class AddSharerToPrivateShares < ActiveRecord::Migration[6.0]
  def change
    add_column :private_shares, :sharer_id, :integer, index: true
    add_foreign_key :private_shares, :users, column: :sharer_id
  end
end
