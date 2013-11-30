class LevelsController < ApplicationController
  def index
    @levels = Level.find(:all)
  end

  def new
    @level = Level.new
  end

  def create
    @level = Level.new(level_params)
    if @level.save
      flash[:success] = "success"
      redirect_to @level
    else
      render 'new'
    end
  end

  def show
    @level = Level.find(params[:id])
  end


  private

    def level_params
      params.require(:level).permit(:tier)
    end
end
