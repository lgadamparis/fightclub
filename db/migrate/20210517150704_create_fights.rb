class CreateFights < ActiveRecord::Migration[6.0]
  def change
    create_table :fights do |t|
      t.boolean :booked
      t.integer :result
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
