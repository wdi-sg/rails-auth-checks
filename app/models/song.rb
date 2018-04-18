class Song < ApplicationRecord
  belongs_to :genre
  has_and_belongs_to_many :hotlists
  validates :title, presence: true, length: { minimum: 3, maximum: 20 }
end
