class SongsController < ApplicationController
  before_action :authenticate_user!

  def post_params
  params.require(:song).permit(:name, :genre_ids => [])
  end

  def index
    @songs = Song.all
  end

  def new
    @new_song = Song.new
    @genres = Genre.all
  end

  def create
    if Song.create(post_params)[:id]
    flash[:notice] = "#{post_params[:name]} has been added!"
    redirect_to songs_path
    else
      flash[:notice] = "Error, please key in a name with 2 or more letters"
      redirect_back fallback_location: root_path
    end
  end

  def edit
    @song = Song.find(params[:id])
    @genres = Genre.all
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(post_params)
      redirect_to songs_path
      flash[:notice] = "Song updated!"
    else
      redirect_back fallback_location: root_path
      flash[:notice] = @song.errors.full_messages.join(', ')
    end
  end

  def destroy
  Song.destroy(params[:id])
  redirect_to songs_path
  end

end
