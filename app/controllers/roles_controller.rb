class RolesController < ApplicationController

  def new
    @role = Role.new
    @people = Person.find(:all, :order => :last_name)
    @role_types = RoleType.find(:all)
  end

  def show
    @role = Role.find(params[:id])
    @roletype = RoleType.where(:role_type_id => params[:id])

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

  private

    def role_params
      params.require(:role).permit(:from_date, :to_date, :person_id, :role_type_id)
    end

end
