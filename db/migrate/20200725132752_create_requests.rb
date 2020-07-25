class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :city
      t.integer :budget
      t.references :user, null: false, foreign_key: true
      t.integer :radius
      t.integer :no_of_flat_mates
      t.integer :size
      t.date :move_in_date_earliest
      t.date :move_in_date_latest
      t.string :address
      t.integer :privacy_level

      t.timestamps
    end
  end
end
