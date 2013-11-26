class RoleTypesController < ApplicationController

  def new
    @role_type = RoleType.new
  end

  def show
    @role_type = RoleType.find(params[:id])
  end


  def create
    @role_type = RoleType.new(role_type_params)
    if @role_type.save
      flash[:success] = "success"
      redirect_to @role_type
    else
      render 'new'
    end
  end

  private

    def role_type_params
      params.require(:role_type).permit(:name)
    end

end
