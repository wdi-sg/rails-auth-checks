class Song < ApplicationRecord
  has_and_belongs_to_many :genres
  validates :name, length: { minimum: 2 }
end
