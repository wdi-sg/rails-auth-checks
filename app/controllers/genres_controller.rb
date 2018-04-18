class GenresController < ApplicationController
	# /songs/:song_id/genres
	def index
		@genres = Genre.joins(:genres_songs).where('genres_songs.song_id in (?)',params[:song_id])
		@song = Song.find(params[:song_id]);
	end

	private
	def genre_params
  		params.require(:genre).permit(:name, :description, :song_id => [])
	end
end
