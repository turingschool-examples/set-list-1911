require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it {should validate_presence_of :title}
    it {should validate_presence_of :play_count}
    it {should validate_presence_of :length}
  end

  describe "relationships" do
    it {should have_many :playlist_songs}
    it {should have_many(:playlists).through(:playlist_songs)}
    it {should belong_to :artist}
  end

  describe "methods" do
    it "song_count" do
      carly_rae = Artist.create(name: "Carly Rae")
      journey = Artist.create(name: "Journey")
      song_1 = Song.create!(title: "I Really Like You",
                           length: 208,
                           play_count: 243810867,
                          artist: carly_rae)
      song_2 = Song.create!(title: "Call Me Maybe",
                           length: 199,
                           play_count: 1214722172,
                         artist: carly_rae)
      song_3 = Song.create!(title: "Don't Stop Believin'",
                           length: 999,
                           play_count: 2345,
                         artist: journey)

      expect(Song.song_count).to eq(3)
      expect(journey.songs.song_count).to eq(1)
      expect(carly_rae.songs.song_count).to eq(2)
    end
  end
end
