class Comment < ApplicationRecord
  include Visible
  belongs_to :article

  validates :commentor, presence: true
  validates :body, presence: true, length: { minimum: 5}

  # VALID_STATUSES = ['public','private','archived']

  #   validates :status, inclusion: {in: VALID_STATUSES}

  #   def archived?
  #       status == 'archived'
  #   end
end
