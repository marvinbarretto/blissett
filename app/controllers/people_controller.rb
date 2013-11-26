class PeopleController < ApplicationController

  def new
    @person = Person.new
    @places = Place.find(:all, :order => :name)
  end

  def edit
    @person = Person.find(params[:id])
    @places = Place.find(:all, :order => :name)
  end


  def show
    @person = Person.find(params[:id])
    @place  = Place.find(@person.place_id)
    @country = @place.country    
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:success] = "success"
      redirect_to @person
    else
      flash[:error] = "error"
      render 'new'
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      flash[:success] = "success"
      redirect_to @person
    else
      flash[:error] = "error"
      render 'edit'
    end
  end


  

  private

    def person_params
      params.require(:person).permit(:first_name, :middle_name, :last_name, :date_of_birth, :place_id, :bio, :photo_url, :photo_caption)
    end

end
