class Restaurant < ApplicationRecord
  has_many :visits
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
