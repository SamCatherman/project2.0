class Product < ApplicationRecord

  has_many :orders, dependent: :destroy
  has_many :farms, through: :orders

  validates :name, uniqueness: true
  validates :name, presence: true

end
