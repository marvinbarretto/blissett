class PlacesController < ApplicationController

  def new
    @place = Place.new
    @countries = Country.find(:all, :order => :name)
  end

  def edit
    @place = Place.find(params[:id])
    @countries = Country.find(:all, :order => :name)
  end


  def show
    @place = Place.find(params[:id])
    @people = Person.where(:place_id => params[:id])
    @country = @place.country
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

  def update
    @place = Place.find(params[:id])
    if @place.update_attributes(place_params)
      flash[:success] = "success"
      redirect_to @place
    else
      flash[:error] = "error"
      render 'edit'
    end
  end 

  private

    def place_params
      params.require(:place).permit(:name, :lat, :lon, :country_id)
    end

end
