class Product < ApplicationRecord
  has_many :markets
  has_many :farms, through: :markets
end
