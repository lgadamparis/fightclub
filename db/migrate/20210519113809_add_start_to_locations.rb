class AddStartToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :starts_at, :string
    add_column :locations, :ends_at, :string
  end
end
