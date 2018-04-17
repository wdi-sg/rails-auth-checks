class SongsController < ApplicationController
	before_action :authenticate_user!, :except => [ :show, :index ]

	def index
		@songs = Song.all
	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @songs }
	    end
	end

	def show
   		@song = Song.find(params[:id])
    
	    respond_to do |format|
	      format.html
	      format.json { render json: @song }
	    end		
	end

	def new
		@song = Song.new
	end

	def edit
	end

	def create
	  @song = Song.new(song_params)
	  @song.user = current_user

	  if @song.save
	    redirect_to @song
	  else
	    render 'new'
	  end
	end

	def update
	end

	def destroy	
	end

	private
	def song_params
  		params.require(:song).permit(:name, :genre_id => [])
	end
end
