class Hotlist < ApplicationRecord
    has_and_belongs_to_many :songs
end
