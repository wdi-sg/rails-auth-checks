class Song < ApplicationRecord
	has_and_belongs_to_many :genres
	belongs_to :user

	validates :name, presence: true, length: { minimum: 5, maximum: 20 }
	validates :year, presence:true, :numericality => { :only_integer => true }, length: { minimum: 4, maximum: 4}
end
