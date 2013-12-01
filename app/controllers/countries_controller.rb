class CountriesController < ApplicationController

  def index
    @countries = Country.find(:all)
  end

  def new
    @country = Country.new
  end

  def edit
    @country = Country.find(params[:id])
  end


  def show
    @country = Country.find(params[:id])
    
    @places = Place.where(:country_id => params[:id])

    @people = Person.where(:place_id => @places)

    
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      flash[:success] = "success"
      redirect_to @country
    else
      render 'new'
    end
  end

  def update
    @country = Country.find(params[:id])
    if @country.update_attributes(country_params)
      flash[:success] = "success"
      redirect_to @country
    else
      flash[:error] = "error"
      render 'edit'
    end
  end


  private

    def country_params
      params.require(:country).permit(:name, :lat, :lon)
    end

end
