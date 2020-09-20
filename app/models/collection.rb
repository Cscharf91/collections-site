class Collection < ApplicationRecord
    belongs_to :practice
    has_one_attached :scan
end
