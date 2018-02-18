module Api
  class ArtistsController < ApplicationController
    def index
      artists = Artist.all
      render json: artists
    end

    def show
      artist = Artist.find(params[:id])
      render json: artist
    end

    def create
      artist = Artist.create!(artist_params)

      render json: artist
    end

    def update
      artist = Artist.find(params[:id])

      artist.update!(artist_params)
      render json: artist
    end

    def destroy
      Artist.find(params[:id]).delete

      head :no_content
    end

    def artist_params
      params.require(:artist).permit(:name, :description)
    end
  end
end
