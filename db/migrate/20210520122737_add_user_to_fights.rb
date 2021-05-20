class AddUserToFights < ActiveRecord::Migration[6.0]
  def change
    add_reference :fights, :user, null: false, foreign_key: true
  end
end
