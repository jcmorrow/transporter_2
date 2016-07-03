class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string "destination"
      t.string "origin"
      t.integer "price_in_cents"
      t.integer "seats"

      t.timestamps null: false
    end
  end
end
