class Ride < ApplicationRecord
  belongs_to :park
  has_many :reviews, dependent: :delete_all
end
