class SeasonsController < ApplicationController
  def index
    @seasons = Season.find(:all)
  end

  def new
    @season = Season.new
    @countries = Country.find(:all)
    # @places = Place.where(:country_id => "@countries")

  end

  def edit
    @season = Season.find(params[:id])
  end

  def create
    @season = Season.new(season_params)
    if @season.save
      flash[:success] = "success"
      redirect_to @season
    else
      render 'new'
    end
  end

  def show
    @season = Season.find(params[:id])

  end


  def destroy
  end

  def update
  end

  private

    def season_params
      params.require(:season).permit(:year_begin, :year_end)
    end
end
