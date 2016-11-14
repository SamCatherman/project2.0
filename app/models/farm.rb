class Farm < ApplicationRecord
  has_many :products, through: :markets
end
