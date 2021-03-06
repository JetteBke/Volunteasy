class Event < ApplicationRecord
  belongs_to :organization
  has_many :bookings
  geocoded_by :address
  validates :start_at, :ends_at, :address, :task, :title, :spots, :category, presence: true
  after_validation :geocode, if: :will_save_change_to_address?

  scope :date_between, ->(start_date, end_date) { where(start_at: start_date..end_date) }

include PgSearch
  pg_search_scope :search_by_title_and_task_and_description_and_category,
    against: [:title, :task, :description, :category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  pg_search_scope :search_by_category,
    against: [:category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def category_icon(category)
    if category == "Animal"
      "<i class='fas fa-paw' style='color:brown'></i>"
    elsif category == "Environment"
      "<i class='fas fa-leaf' style='color:green'></i>"
    elsif category == "Community"
      "<i class='fas fa-hands-helping' style='color:grey'></i>"
    end
  end
end
