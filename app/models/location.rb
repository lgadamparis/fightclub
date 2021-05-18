class Location < ApplicationRecord
  belongs_to :user
  has_many :fights
  validates :location, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
