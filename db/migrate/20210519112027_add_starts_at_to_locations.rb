class AddStartsAtToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :StartsAt, :string
    add_column :locations, :EndsAt, :string
  end
end
