class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @artist_id = params[:id]
  end

  def create
    artist = Artist.find(params[:id])
    song = artist.songs.create!(song_params)
    redirect_to "/songs/#{song.id}"
  end

  private

    def song_params
      params.permit(:title, :length, :play_count)
    end
end

