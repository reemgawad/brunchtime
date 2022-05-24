class Restaurant < ApplicationRecord
  has_many :visits
  has_one_attached :photo
end
