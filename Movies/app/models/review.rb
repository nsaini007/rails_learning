class Review < ApplicationRecord
  belongs_to :movie

  # validates :reviewer,presence: true
  # validates :review, presence: true
end
