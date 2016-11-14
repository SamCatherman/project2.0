class Farm < ApplicationRecord
  has_many :markets
  has_many :products, through: :markets
end
