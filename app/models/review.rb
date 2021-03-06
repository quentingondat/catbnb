class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :user_id, presence: true
  validates :booking_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: {in: [1,2,3,4,5]}
end
