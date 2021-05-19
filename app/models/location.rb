class Location < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :fights
  validates :location, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true

end

