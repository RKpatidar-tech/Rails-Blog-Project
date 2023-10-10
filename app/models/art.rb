class Art < ApplicationRecord
    has_many :sources, as: :sourcable
end
