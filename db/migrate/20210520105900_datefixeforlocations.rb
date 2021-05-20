class Datefixeforlocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :starts_at
    remove_column :locations, :EndsAt
    remove_column :locations, :StartsAt
    remove_column :locations, :ends_at

    add_column :locations, :starts_at, :datetime
    add_column :locations, :ends_at, :datetime
  end
end
