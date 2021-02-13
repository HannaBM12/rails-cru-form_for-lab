class GenresController < ApplicationController

    before_action :find_genre, only: [:show]
 
    def index
        @genres = Genre.all
    end

    def show
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(strong_params)
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find_by(id: params[:id])
    end

    def update
        @genre = Genre.update(strong_params)
        redirect_to genre_path(@genre)
    end

    private

    def find_genre
        @genre = Genre.find_by(id: params[:id])
    end

    def strong_params
        params.require(:genre).permit(:name)
    end
end
