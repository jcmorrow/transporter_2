class AddRidePriceDefault < ActiveRecord::Migration[5.0]
  def up
    change_column :rides, :price_in_cents, :integer, null: false, default: 0
  end

  def down
    change_column :rides, :price_in_cents, :integer, null: true
  end
end
