class SongsController < ApplicationController
	before_action :authenticate_user!, :except => [ :show, :index ]
	def index
		@songs = Song.all
	end

	def show
		@song = Song.find_by(id: params[:id])
	end

	def new
		@user = User.find_by(id: current_user.id)
		@song = Song.new
		render :new
	end

	def create
		@song = Song.new(song_params)

		if @song.save
			redirect_to @song	
		else
			render 'new'
		end
	end

	private
	def song_params
		params.require(:song).permit(:name, :text).merge(user_id: current_user.id)
	end

end
