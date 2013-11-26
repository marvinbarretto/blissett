class PeopleController < ApplicationController

  def new
    @person = Person.new
    @places = Place.find(:all, :order => :name)
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:success] = "success"
      redirect_to @person
    else
      render 'new'
    end
  end

  private

    def person_params
      params.require(:person).permit(:first_name, :middle_name, :last_name, :date_of_birth, :place_id)
    end

end
