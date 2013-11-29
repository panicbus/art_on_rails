class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def new
  end

  def create
    painting = Painting.create(title: params[:painting_title],
        year: params[:painting_year],
        style: params[:painting_style],
        image: params[:painting_image]
        )
    redirect_to painting
  end


  def show
    @painting = Painting.find(params[:id])
  end

end
