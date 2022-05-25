class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :rating, acceptance: { accept: [0, 1, 2, 3, 4, 5] }
end
