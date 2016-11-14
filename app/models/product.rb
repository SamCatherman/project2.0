class Product < ApplicationRecord
  has_many :farms
  has_many :products, through: :markets
end
