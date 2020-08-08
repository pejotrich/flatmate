class AddPrivacyLevelToPrivateShares < ActiveRecord::Migration[6.0]
  def change
    add_column :private_shares, :privacy_level, :boolean, :default => false
  end
end
