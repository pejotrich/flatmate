class AddDefaultToStatusInOffers < ActiveRecord::Migration[6.0]
  def change
    change_column :offers, :status, :string, :default => "pending"
  end
end
