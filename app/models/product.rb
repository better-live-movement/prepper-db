class Product < ApplicationRecord
  belongs_to :productgroup
  belongs_to :manufacturer
  has_many :endtities
end
