class AddLocationToFights < ActiveRecord::Migration[6.0]
  def change
    add_reference :fights, :location, null: false, foreign_key: true
  end
end
