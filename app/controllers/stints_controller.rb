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
    @club_sold_to = Club.find(@stint.sold_to) if @stint.sold_to

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
    @clubs = Club.find(:all)
    @roles = Role.find(:all)

  end

  private

    def stint_params
      params.require(:stint).permit(:person_id, :role_id, :join_date, :leave_date, :from, :bought_fee, :sold_to, :sold_fee, :is_permanent, :is_one_of_our_own)
    end  
end
