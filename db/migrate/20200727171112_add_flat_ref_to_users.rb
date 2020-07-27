class AddFlatRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :flat, null: false, foreign_key: true
  end
end
