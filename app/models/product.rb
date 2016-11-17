class Product < ApplicationRecord
  belongs_to :farm, through: :harvests
end
