class SongsController < ApplicationController
    before_action :authenticate_user!, :except => [:show, :index]

    def index
        if !params[:genre_id].nil?
            @genre = Genre.find(params[:genre_id])
            @songs = Song.where(id: @genre.song_ids)
        else
            @songs = Song.all
        end
    end

    def show
        @song = Song.find(params[:id])
        @genres = Genre.where(id: @song.genre_ids)
    end

    def new
        @song = Song.new
        @user = current_user
    end

    def create
        @song = Song.new(song_params)
        @user = User.find(params[:user][:id])

        if @song.save
            redirect_to @song
        else
            render 'new'
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def song_params
        params.require(:song).permit(:name)
      end
end
