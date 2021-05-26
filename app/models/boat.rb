class Boat < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :user
  validates :name, :location, :price_per_night, :description, :pictures_url, presence: true
  validates :description, length: { minimum: 20, too_short: "minimum is %{count} characters"}
end
