class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
  end

  def create
      artist = Artist.create(name: params[:artist_name],
        nationality: params[:artist_nationality],
        dob: params[:artist_dob],
        period: params[:artist_period],
        image: params[:artist_image]
      )
    redirect_to artist
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
