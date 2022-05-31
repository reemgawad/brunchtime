class Restaurant < ApplicationRecord
  has_many :visits
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_favoritable

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true }
    }

  def update_avg_rating
    ratings = visits.map(&:rating).compact
    self.avg_rating = ratings.sum / ratings.size unless ratings.size.zero?
  end
end
