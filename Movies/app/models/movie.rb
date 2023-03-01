class Movie < ApplicationRecord
    has_many :reviews
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 20 }
    validates :image, presence: true
end
