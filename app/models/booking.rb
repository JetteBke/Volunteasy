class Booking < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
