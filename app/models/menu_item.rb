class MenuItem < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
