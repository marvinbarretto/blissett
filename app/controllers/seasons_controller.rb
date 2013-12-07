class SeasonsController < ApplicationController
  def index
    @seasons = Season.find(:all)

    @competitions = Competition.find(:all)
    @levels = Level.find(:all)
    
  end

  def new
    @season = Season.new
    @countries = Country.find(:all)
    # @places = Place.where(:country_id => "@countries")

    @competitions = Competition.find(:all)
    @levels = Level.find(:all)

  end

  def edit
    @season = Season.find(params[:id])

    @competitions = Competition.find(:all)
    @levels = Level.find(:all)
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

  def update
    @season = Season.find(params[:id])
    if @season.update_attributes(season_params)
      flash[:success] = "success"
      redirect_to @season
    else
      flash[:error] = "error"
      render 'edit'
    end
  end


  def show
    @season = Season.find(params[:id])

    @competition = Competition.find(@season.competition_id).name

    @matches = Match.where(:season_id => @season)

  end


  def destroy
  end


  private

    def season_params
      params.require(:season).permit(:year_begin, :year_end, :competition_id, :level_id)
    end
end
