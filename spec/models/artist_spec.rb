require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
  end
  describe "relationships" do
    it {should have_many :songs}
  end
  describe "methods" do
    it "average_song_length" do
      carly_rae = Artist.create(name: "Carly Rae")
      song_1 = Song.create!(title: "I Really Like You",
                           length: 200,
                           play_count: 243810867,
                          artist: carly_rae)
      song_2 = Song.create!(title: "Call Me Maybe",
                           length: 300,
                           play_count: 1214722172,
                         artist: carly_rae)

      expect(carly_rae.average_song_length).to eq(250)
    end
  end
end
