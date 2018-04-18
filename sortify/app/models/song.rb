class Song < ApplicationRecord
  has_and_belongs_to_many :genres
  validates :name, presence: true, length: {minimum: 5}
end
