class Farm < ApplicationRecord
  has_many :harvests
  has_many :products, through: :harvests
end
