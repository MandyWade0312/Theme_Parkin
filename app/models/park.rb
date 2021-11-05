class Park < ApplicationRecord
    has_many :rides, dependent: :destroy
    validates :name, presence: true
    validates :state, presence: true
    validates :history, presence: true
    validates :year_built, presence: true

    has_one_attached :map
end
