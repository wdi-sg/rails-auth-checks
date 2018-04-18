class HotlistsSongs < ApplicationRecord
  belongs_to :hotlist
  belongs_to :song
end
