class Entity < ApplicationRecord
  belongs_to :product
  belongs_to :storage_location
end
