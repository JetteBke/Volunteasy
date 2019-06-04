class Organization < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy
  has_many :bookings, through: :events
  has_many :reviews, through: :bookings
  validates :name, :address, :category, :url, :description, presence: true
  mount_uploader :photo_url, PhotoUploader

  CATEGORIES = %w( Animal Environment Community)
end

# add validations for default value of :verified. Should it be boolean?
# add validations for default lengths of each string/text field
