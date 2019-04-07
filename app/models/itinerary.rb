class Itinerary < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :description, length: {in: 10..500}
  validates :address, presence: true
  validates :country, presence: true
end