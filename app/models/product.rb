class Product < ApplicationRecord
  belongs_to :farm
  has_many :markets
end
