class News < ApplicationRecord
    has_many :sources, as: :sourcable

end
