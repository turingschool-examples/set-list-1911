class Song < ApplicationRecord
  validates_presence_of :title, :play_count, :length
  belongs_to :artist
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  def self.song_count
    count
  end
end
