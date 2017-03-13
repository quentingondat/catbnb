class Cat < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :race, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true

  has_attachment :photo
end
