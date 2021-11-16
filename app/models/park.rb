class Park < ApplicationRecord
    has_many :rides, dependent: :destroy
    validates :name, presence: true
    validates :state, presence: true
    validates :history, presence: true
    validates :year_built, presence: true

    has_one_attached :map

    def aspect_ratio 
    #  if map_width < map_height
    #     map_width.to_f / map_height.to_f
    #  else
        map_height.to_f / map_width.to_f
    #  end
    end
end
