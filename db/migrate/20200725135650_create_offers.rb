class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :creator, null: false, foreign_key: { to_table: :users }
      t.string :status
      t.references :request, null: false, foreign_key: true
      t.text :first_message

      t.timestamps
    end
  end
end
