class Booking < ApplicationRecord
  belongs_to :cat
  belongs_to :user
  has_many :reviews
  validates :cat_id, presence: true
  validates :user_id, presence: true
  validates :start_at, presence: true
  validates :ends_at, presence: true
  validates :price_per_day, presence: true
end
