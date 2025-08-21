class Address < ApplicationRecord
  has_many :orders

  validates :city, :area_code, :street, :house_number, presence: true
  validates :area_code, length: { maximum: 6 }
  validates :house_number, numericality: { greater_than: 0 }

  def to_s
    "#{street} #{house_number}, #{city}, #{area_code}"
  end
end
