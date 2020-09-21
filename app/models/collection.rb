class Collection < ApplicationRecord
    belongs_to :practice, dependent: :destroy
    has_one_attached :scan
end
