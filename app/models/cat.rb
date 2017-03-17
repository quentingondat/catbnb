class Cat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: true
  validates :race, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true

  has_attachment :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
