class Event < ApplicationRecord
    has_many :sources, as: :sourcable

end
