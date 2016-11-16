class Farm < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :harvests, through: :products
end
