class Restaurant < ApplicationRecord
  belongs_to :address

  validates :name, :address, :opening_time, :closing_time, :cuisine, presence: true
end
