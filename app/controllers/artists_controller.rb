class ArtistsController < ApplicationController

    before_action :find_artist, only: [:show, :edit]

    def index
        @artists = Artist.all
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(strong_params)
        redirect_to artists_path
    end

    def edit
    end
    
    def update
        @artist = Artist.update(strong_params)
        redirect_to artist_path(@artist)
    end


    private

    def find_artist
        @artist = Artist.find_by(id: params[:id])
    end

    def strong_params
       params.require(:artist).permit(:name, :bio)
    end
end
