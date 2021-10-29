class Ride < ApplicationRecord
  belongs_to :park
  has_many :reviews, dependent: :destroy

  # geocoded_by :latitude, :longitude
  # after_validation :geocode, if: :latitude_changed? 

  validates :name, presence: true
  validates :description, presence: true
  validates :type_of_ride, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
 
end
