class Movie < ApplicationRecord
    include Visible

    has_many :reviews, dependent: :destroy

    validates :title, presence: true
    validates :image, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    VALID_STATUSES = ['public', 'private', 'archived']

    validates :status, inclusion: { in: VALID_STATUSES }    
end
