class MenuItem < ApplicationRecord
  belongs_to :restaurant
  has_many :order_items
  has_many :orders, through: :order_items

  validates :restaurant, :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
