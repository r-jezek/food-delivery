class Restaurant < ApplicationRecord
  belongs_to :address
  has_many :menu_items

  validates :name, :address, :opening_time, :closing_time, :cuisine, presence: true
end
