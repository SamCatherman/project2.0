class Order < ApplicationRecord
  belongs_to :farm
  belongs_to :product
  validates :price, presence: true
  validates :farm_id, presence: true
  validates :item_id, presence: true
end
