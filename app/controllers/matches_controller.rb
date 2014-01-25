class MatchesController < ApplicationController
  def index

  end

  def new
    @match = Match.new

    @competitions = Competition.find(:all)
    @clubs = Club.find(:all, :order => :name)
    @countries = Country.find(:all, :order => :name)
    @seasons = Season.find(:all)
  end

  def show
    @match = Match.find(params[:id])
    @competition = Competition.find(@match.competition_id)
    @opposition = Club.find(@match.opposition_id)
    @season = Season.find(@match.season_id)
  end

  def edit
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      flash[:success] = "success"
      redirect_to @match
    else
      flash[:error] = "error"
      render 'new'
    end
  end

  def update
    @match = Match.find(params[:id])
    if @match.update_attributes(match_params)
      flash[:success] = "success"
      redirect_to @match
    else
      flash[:error] = "error"
      render 'edit'
    end
  end

  def destroy
  end

  private


    def match_params
      params.require(:match).permit(:date, :competition_id, :opposition_id, :season_id, :attendance, :is_home, :home_goals, :away_goals)
    end

end
