class Review < ApplicationRecord
  include Visible

  belongs_to :movie

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }
end
