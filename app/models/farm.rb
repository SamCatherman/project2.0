class Farm < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :orders, dependent: :destroy
  has_many :products, through: :orders
  validates :name, uniqueness: true
end
