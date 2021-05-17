class Fight < ApplicationRecord
  belongs_to :location
  validates :booked, presence: true, uniqueness: true
  validates :result, presence: true, uniqueness: true
  validates :date, presence: true, uniqueness: true
  validates :time, presence: true, uniqueness: true
  validates :movie, uniqueness: { scope: :list}
end
