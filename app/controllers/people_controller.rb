class PeopleController < ApplicationController

  def new
    @person = Person.new
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
      params.require(:person).permit(:first_name, :last_name)
    end

end
