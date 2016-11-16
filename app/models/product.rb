class Product < ApplicationRecord
  has_many :harvests
  has_many :farms, through: :harvests
end
