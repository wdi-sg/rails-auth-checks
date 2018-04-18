class SongsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  
  # def initialize
  #   @genres = Genre.all
  # end

  def index
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
			@songs = Song.where(genre_id: params[:genre_id])
		else
			@songs = Song.all
    end
	end

  def new
    @song = Song.new
    @genre = Genre.all
    @hotlist = Hotlist.all
  end

  def create
    @song = Song.new(song_params)
    @genre = Genre.all

    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end

  def show
    # deal with the case that we are trying to get a song for a park that doesn't exist
    @song = Song.find(params[:id])
    
    if params[:genre_id].to_i != @song.genre.id
      # do something
    end
  end

private

  def song_params
    params.require(:song).permit(:title, :genre_id, :hotlist_ids => [])
  end
end