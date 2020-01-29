class Song < ApplicationRecord
  validates_presence_of :title, :play_count, :length
  belongs_to :artist

  def self.song_count
    count
  end
end
