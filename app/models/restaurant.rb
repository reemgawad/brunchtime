class Restaurant < ApplicationRecord
  has_many :visits
  has_one_attached :photo
  acts_as_favoritable
end
