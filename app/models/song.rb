class Song < ApplicationRecord
  validates_presence_of :title, :length, :play_count
end