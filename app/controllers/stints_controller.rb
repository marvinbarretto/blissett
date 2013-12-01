class StintsController < ApplicationController
  def new
    @stint  = Stint.new
    @clubs  = Club.find(:all)
    @people = Person.find(:all)
    @roles  = Role.find(:all)
  end

  def edit
    @stint = Stint.find(params[:id])
    @clubs  = Club.find(:all)
    @people = Person.find(:all)
    @roles  = Role.find(:all)
  end

  def show
    @stint = Stint.find(params[:id])
  end


  def create
    @stint = Stint.new(stint_params)
    if @stint.save
      flash[:success] = "success"
      redirect_to @stint
    else
      render 'new'
    end    
  end

  def destroy
  end

  def update
    @stint = Stint.find(params[:id])
    if @stint.update_attributes(stint_params)
      flash[:success] = "success"
      redirect_to @stint
    else
      flash[:error] = "error"
      render 'edit'
    end    
  end

  def index
    @stints = Stint.find(:all)
  end

  private

    def stint_params
      params.require(:stint).permit(:person_id, :role_id, :join_date, :leave_date, :fee, :bought_from, :sold_to)
    end  
end
