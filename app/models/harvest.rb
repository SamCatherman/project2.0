class Harvest < ApplicationRecord
  belongs_to :farm
  has_many :products
end
