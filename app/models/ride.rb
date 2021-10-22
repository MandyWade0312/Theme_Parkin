class Ride < ApplicationRecord
  belongs_to :park
  has_many :reviews
end
