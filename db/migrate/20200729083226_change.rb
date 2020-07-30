class Change < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :flat_id, true
  end
end
