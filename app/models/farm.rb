class Farm < ApplicationRecord
  has_many :products, through: :harvests
end
