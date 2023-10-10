class Source < ApplicationRecord
  belongs_to :sourcable, polymorphic: true
 
end
