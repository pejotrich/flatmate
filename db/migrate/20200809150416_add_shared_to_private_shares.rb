class AddSharedToPrivateShares < ActiveRecord::Migration[6.0]
  def change
    add_column :private_shares, :shared, :boolean, :default => false
  end
end
