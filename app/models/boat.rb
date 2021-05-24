class Boat < ApplicationRecord
  belongs_to :user
  validates :name, :location, :price_per_night, :pictures_url, presence: true
end
