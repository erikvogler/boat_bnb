class Boat < ApplicationRecord
  belongs_to :user
  validates :name, :location, :price_per_night, :description, :pictures_url, presence: true
  validates :description, length: { minimum: 20, too_short: "minimum is %{count} characters"}
  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [ :location, :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
