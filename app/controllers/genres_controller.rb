class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)

    @genre.save
    redirect_to @genre
  end

  def show
    @genre = Genre.find(params[:id])
  end

private

  def genre_params
    params.require(:genre).permit(:name, :description)
  end

end