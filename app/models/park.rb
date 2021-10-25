class Park < ApplicationRecord
    has_many :rides, dependent: :nullify
end
