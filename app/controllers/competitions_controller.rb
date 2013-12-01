class CompetitionsController < ApplicationController
  def index
    @competitions = Competition.find(:all)
  end


  def new
    @competition = Competition.new
  end

  def edit
  end

  def create
    @competition = Competition.new(competition_params)
    if @competition.save
      flash[:success] = "success"
      redirect_to @competition
    else
      render 'new'
    end
  end

  def show
    @competition = Competition.find(params[:id])
  end

  private

    def competition_params
      params.require(:competition).permit(:name, :is_league, :is_national, :is_cup, :is_european, :is_friendly)
    end  
end
