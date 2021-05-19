class Location < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :fights
  validates :location, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end

