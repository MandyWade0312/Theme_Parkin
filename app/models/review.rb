class Review < ApplicationRecord
  belongs_to :ride
  belongs_to :user

  validates :summary, presence: true
  validates :body, presence: true
  validates :stars, presence: true
end
