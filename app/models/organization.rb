class Organization < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy
  has_many :bookings, through: :events
  has_many :reviews, through: :bookings
  validates :name, :address, :category, :url, :description, presence: true
  mount_uploader :photo_url, PhotoUploader

  CATEGORIES = %w( Animal Environment Community)

  def category_icon(category)
    if category == "Animals"
      "<i class='fas fa-paw' style='color:brown'></i>"
    elsif category == "Environment"
      "<i class='fas fa-leaf' style='color:green'></i>"
    elsif category == "Community"
      "<i class='fas fa-hands-helping'></i>"
    end
  end
end

# add validations for default value of :verified. Should it be boolean?
# add validations for default lengths of each string/text field
