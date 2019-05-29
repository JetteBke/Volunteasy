class Event < ApplicationRecord
  belongs_to :organization
  has_many :bookings

  include PgSearch
  pg_search_scope :search_by_title_and_task_and_description_and_category,
    against: [ :title, :task, :description, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
