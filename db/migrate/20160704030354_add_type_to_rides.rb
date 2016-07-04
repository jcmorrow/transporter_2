class AddTypeToRides < ActiveRecord::Migration[5.0]
  def change
    add_column :rides, :vehicle_type, :string, null: false, default: "car"
  end
end
