class GenresController < ApplicationController
    def index
      @genres = Genre.all
    end

    def show
      @genre = Genre.find(params[:id])
      @songs = Song.where(id: @genre.song_ids)
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def genre_params
    end
end
