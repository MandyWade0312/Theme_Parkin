class Ride < ApplicationRecord
  belongs_to :park
  has_many :reviews, dependent: :destroy

  geocoded_by :latitude, :longitude
  after_validation :geocode
end
