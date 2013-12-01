class RolesController < ApplicationController
  def new
    @role = Role.new
  end

  def edit
    @role = Role.find(params[:id])
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      flash[:success] = "success"
      redirect_to @role
    else
      render 'new'
    end
  end

  def show
    @role = Role.find(params[:id])
  end


  def update
  end

  def index
    @roles = Role.find(:all)
  end

  private

    def role_params
      params.require(:role).permit(:name)
    end

end
