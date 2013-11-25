class PlacesController < ApplicationController

  def new
    @place = Place.new
    @countries = Country.find(:all, :order => :name)

  end

  def show
    @place = Place.find(params[:id])

    
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      flash[:success] = "success"
      redirect_to @place
    else
      render 'new'
    end
  end

  private

    def place_params
      params.require(:place).permit(:name, :lat, :lon, :country_id)
    end

end
