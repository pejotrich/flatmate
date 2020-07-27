class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.text :description
      t.integer :no_of_flat_mates
      t.string :address

      t.timestamps
    end
  end
end
