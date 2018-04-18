class HotlistsController < ApplicationController

  def index
    @hotlists = Hotlist.all
  end

  def new
    @hotlist = Hotlist.all
    @song = Song.all
  end

  def create
    @hotlist = Hotlist.new(hotlist_params)
    @song = Song.find(Song.ids)

    @hotlist.save
    @song[0].hotlists << @hotlist
    redirect_to @hotlist
  end

  def show
    @hotlist = Hotlist.find(params[:id])
  end

private

  def hotlist_params
    params.require(:hotlist).permit(:week, :song_ids => [])
  end
end