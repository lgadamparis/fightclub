class Fight < ApplicationRecord
  belongs_to :location
  belongs_to :user
  validates :fight_date, presence: true
end
