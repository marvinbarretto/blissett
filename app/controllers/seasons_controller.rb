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

    @matches = Match.where(:season_id => @season)



    @players_available = Stint.find(:all, :conditions => ["join_date <= ? AND leave_date >= ?", @season.year_begin, @season.year_end])


  end


  def destroy
  end


  private

    def season_params
      params.require(:season).permit(:year_begin, :year_end, :level_id)
    end
end
