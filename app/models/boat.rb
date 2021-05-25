class Boat < ApplicationRecord
  belongs_to :user
  validates :name, :location, :price_per_night, :description, :pictures_url, presence: true
  validates :description, length: { minimum: 50, too_short: "minimum is %{count} characters"}
end
