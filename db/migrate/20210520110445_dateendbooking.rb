class Dateendbooking < ActiveRecord::Migration[6.0]
  def change
    remove_column :fights, :date
    remove_column :fights, :time

    add_column :fights, :fight_date, :datetime
  end
end

