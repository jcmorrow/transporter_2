class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :ride, null: false

      t.timestamps null: false
    end
  end
end
